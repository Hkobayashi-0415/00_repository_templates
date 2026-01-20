<#
.SYNOPSIS
    AI Playbook 診断スクリプト（compiled固定方式対応）
.DESCRIPTION
    期待されるパスに必要ファイルが揃っているかチェックし、OK/NGを一覧出力。
    compiled固定、build.lock存在、想定エージェント存在を検証。
    lock情報（generated_at/version/hash）とjunction/copy状態を明示表示。
.EXAMPLE
    .\doctor.ps1
    .\doctor.ps1 -Mode extended
    .\doctor.ps1 -Fix
#>

[CmdletBinding()]
param(
    [ValidateSet("minimal", "extended", "catalog")]
    [string]$Mode = "minimal",

    [ValidateSet("fail", "warn", "off")]
    [string]$RegistryHashPolicy = "fail",
    
    [switch]$Fix
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Continue"

# Load common module
. (Join-Path $PSScriptRoot "Common.ps1")

#region Load Config
try {
    $script:Config = Import-PlaybookConfig -ScriptRoot $PSScriptRoot
} catch {
    Write-Host "[ERROR] Failed to load config: $_" -ForegroundColor Red
    exit 1
}

$script:SSOT_BASE = $script:Config.SSOTBase
$script:SSOT_SKILLS = $script:Config.SSOTSkills
$script:SSOT_AGENTS_CATALOG = $script:Config.SSOTAgentsCatalog
$script:TARGETS = $script:Config.Targets
$script:EXPECTED_SKILLS = $script:Config.ExpectedSkills
$script:EXPECTED_AGENTS_MINIMAL = $script:Config.ExpectedAgentsMinimal
$script:EXPECTED_AGENTS_EXTENDED = $script:Config.ExpectedAgentsExtended
$script:CATALOG_CATEGORIES = $script:Config.CatalogCategories
#endregion

#region Functions
function Write-CheckResult {
    param(
        [string]$Item,
        [bool]$OK,
        [string]$Detail = ""
    )
    
    if ($OK) {
        Write-Host "  [" -NoNewline
        Write-Host "OK" -ForegroundColor Green -NoNewline
        Write-Host "] " -NoNewline
    } else {
        Write-Host "  [" -NoNewline
        Write-Host "NG" -ForegroundColor Red -NoNewline
        Write-Host "] " -NoNewline
    }
    
    Write-Host $Item -NoNewline
    if ($Detail) {
        Write-Host " " -NoNewline
        Write-Host "($Detail)" -ForegroundColor Gray
    } else {
        Write-Host ""
    }
    
    return $OK
}

function Get-LinkStatus {
    param([string]$Path)
    if (-not (Test-Path $Path)) {
        return @{ Status = "missing"; Icon = "❌"; IsJunction = $false; Target = $null }
    } elseif (Test-IsJunction $Path) {
        $target = Get-JunctionTarget $Path
        return @{ Status = "junction"; Icon = "🔗"; Target = $target; IsJunction = $true }
    } else {
        return @{ Status = "copy"; Icon = "📁"; IsJunction = $false; Target = $null }
    }
}

function Get-ExpectedAgents {
    switch ($Mode) {
        "minimal" { return $script:EXPECTED_AGENTS_MINIMAL }
        "extended" { return $script:EXPECTED_AGENTS_MINIMAL + $script:EXPECTED_AGENTS_EXTENDED }
        "catalog" { return $script:EXPECTED_AGENTS_MINIMAL + $script:EXPECTED_AGENTS_EXTENDED }
    }
}
#endregion

#region Main
function Main {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "  AI Playbook Doctor" -ForegroundColor Cyan
    Write-Host "  Mode: $Mode" -ForegroundColor Cyan
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
    
    $totalChecks = 0
    $passedChecks = 0
    $issues = @()
    $agentsLinkType = "unknown"
    
    #region SSOT Checks
    Write-Host "SSOT (Source of Truth)" -ForegroundColor Yellow
    Write-Host "  Path: $script:SSOT_BASE" -ForegroundColor Gray
    Write-Host ""
    
    # Check skills
    $totalChecks++
    $ok = Test-Path $script:SSOT_SKILLS
    if (Write-CheckResult "skills/" $ok) { $passedChecks++ } else { $issues += "SSOT: skills/ missing" }
    
    foreach ($skill in $script:EXPECTED_SKILLS) {
        $skillPath = Join-Path $script:SSOT_SKILLS "$skill\SKILL.md"
        $totalChecks++
        $ok = Test-Path $skillPath
        if (Write-CheckResult "  $skill/SKILL.md" $ok) { $passedChecks++ } else { $issues += "SSOT: $skill/SKILL.md missing" }
    }
    
    # Check minimal agents source
    Write-Host ""
    $minimalSource = Join-Path $script:SSOT_BASE "subagents\minimal"
    $totalChecks++
    $ok = Test-Path $minimalSource
    if (Write-CheckResult "subagents/minimal/" $ok) { $passedChecks++ } else { $issues += "SSOT: subagents/minimal/ missing" }
    
    foreach ($agent in $script:EXPECTED_AGENTS_MINIMAL) {
        $agentPath = Join-Path $minimalSource $agent
        $totalChecks++
        $ok = Test-Path $agentPath
        if (Write-CheckResult "  $agent" $ok) { $passedChecks++ } else { $issues += "SSOT: minimal/$agent missing" }
    }
    
    # Check extended agents source if mode includes extended
    if ($Mode -in @("extended", "catalog")) {
        Write-Host ""
        $extendedSource = Join-Path $script:SSOT_BASE "subagents\extended"
        $totalChecks++
        $ok = Test-Path $extendedSource
        if (Write-CheckResult "subagents/extended/" $ok) { $passedChecks++ } else { $issues += "SSOT: subagents/extended/ missing" }
        
        foreach ($agent in $script:EXPECTED_AGENTS_EXTENDED) {
            $agentPath = Join-Path $extendedSource $agent
            $totalChecks++
            $ok = Test-Path $agentPath
            if (Write-CheckResult "  $agent" $ok) { $passedChecks++ } else { $issues += "SSOT: extended/$agent missing" }
        }
    }
    
    # Check catalog if mode is catalog
    if ($Mode -eq "catalog") {
        Write-Host ""
        $totalChecks++
        $ok = Test-Path $script:SSOT_AGENTS_CATALOG
        if (Write-CheckResult "subagents/catalog/" $ok) { $passedChecks++ } else { $issues += "SSOT: subagents/catalog/ missing" }
        
        foreach ($category in $script:CATALOG_CATEGORIES) {
            $catPath = Join-Path $script:SSOT_AGENTS_CATALOG $category
            $totalChecks++
            $ok = Test-Path $catPath
            if (Write-CheckResult "  $category/" $ok) { $passedChecks++ } else { $issues += "SSOT: catalog/$category missing" }
        }
    }
    #endregion
    
    #region Compiled Checks
    Write-Host ""
    Write-Host "Compiled (Build Output)" -ForegroundColor Yellow
    
    $compiledAgents = Get-CompiledAgentsPath -SSOTBase $script:SSOT_BASE
    $buildLock = Get-BuildLockInfo -SSOTBase $script:SSOT_BASE
    
    Write-Host "  Path: $compiledAgents" -ForegroundColor Gray
    Write-Host ""
    
    # Check compiled directory exists
    $totalChecks++
    $ok = Test-Path $compiledAgents
    if (Write-CheckResult "_compiled/claude/agents/" $ok) { 
        $passedChecks++ 
    } else { 
        $issues += "Compiled: _compiled/claude/agents/ missing - run install.ps1 -Mode $Mode" 
    }
    
    # Check build.lock.yaml with detailed info
    $totalChecks++
    if ($buildLock -and $buildLock.Exists) {
        if (Write-CheckResult "build.lock.yaml" $true "exists") { $passedChecks++ }
        
        # Display lock details
        Write-Host ""
        Write-Host "  Build Lock Info:" -ForegroundColor Gray
        if ($buildLock.PlaybookVersion) {
            Write-Host "    playbook_version: " -NoNewline -ForegroundColor Gray
            Write-Host "v$($buildLock.PlaybookVersion)" -ForegroundColor Cyan
        }
        if ($buildLock.Mode) {
            Write-Host "    mode:             " -NoNewline -ForegroundColor Gray
            Write-Host "$($buildLock.Mode)" -ForegroundColor Cyan
        }
        if ($buildLock.RegistryHash) {
            Write-Host "    registry_hash:    " -NoNewline -ForegroundColor Gray
            Write-Host "$($buildLock.RegistryHash)" -ForegroundColor Cyan
        }
        if ($buildLock.GeneratedAt) {
            Write-Host "    generated_at:     " -NoNewline -ForegroundColor Gray
            Write-Host "$($buildLock.GeneratedAt)" -ForegroundColor Cyan
        }
    } else {
        if (-not (Write-CheckResult "build.lock.yaml" $false "missing - run install.ps1")) {
            $issues += "Compiled: build.lock.yaml missing - run install.ps1 -Mode $Mode"
        }
    }

    # Check registry_hash mismatch to prevent "forgot update.ps1" accidents
    if ($RegistryHashPolicy -ne "off") {
        $registryYaml = Join-Path $script:SSOT_BASE "meta\registry.yaml"
        $currentRegistryHash = Get-FileHash256 -Path $registryYaml
        $expectedRegistryHash = $buildLock.RegistryHash

        if (-not $expectedRegistryHash) {
            $totalChecks++
            if (Write-CheckResult "registry_hash match" $false "missing in build.lock.yaml - run install/update") {
                $passedChecks++
            } else {
                $issues += "Compiled: registry_hash missing in build.lock.yaml"
            }
        } elseif (-not $currentRegistryHash) {
            $totalChecks++
            if (Write-CheckResult "registry_hash match" $false "meta/registry.yaml not found") {
                $passedChecks++
            } else {
                $issues += "Meta: registry.yaml missing"
            }
        } else {
            $totalChecks++
            $hashMatches = $currentRegistryHash -eq $expectedRegistryHash

            if ($hashMatches) {
                if (Write-CheckResult "registry_hash match" $true) { $passedChecks++ }
            } else {
                $detail = "mismatch - lock=$expectedRegistryHash current=$currentRegistryHash"
                if ($RegistryHashPolicy -eq "warn") {
                    Write-Warn "Registry hash mismatch detected (policy=warn). Run '.\\update.ps1 -Mode $Mode'."
                    if (Write-CheckResult "registry_hash match" $true "WARN $detail") { $passedChecks++ }
                } else {
                    if (-not (Write-CheckResult "registry_hash match" $false $detail)) {
                        $issues += "Registry hash mismatch - run '.\\update.ps1 -Mode $Mode'"
                    }
                }
            }
        }
    }
    
    # Check expected agents in compiled
    Write-Host ""
    $expectedAgents = Get-ExpectedAgents
    Write-Host "  Expected agents ($($expectedAgents.Count)):" -ForegroundColor Gray
    foreach ($agent in $expectedAgents) {
        $agentPath = Join-Path $compiledAgents $agent
        $totalChecks++
        $check = Test-AgentContent -AgentPath $agentPath
        if (Write-CheckResult "    $agent" $check.OK $check.Reason) {
            $passedChecks++
        } else {
            $issues += "Compiled: $agent - $($check.Reason)"
        }
    }
    #endregion
    
    #region Target Checks
    Write-Host ""
    Write-Host "Targets (Installed Locations)" -ForegroundColor Yellow
    Write-Host ""
    
    foreach ($key in $script:TARGETS.Keys) {
        $path = $script:TARGETS[$key]
        $linkInfo = Get-LinkStatus -Path $path
        
        Write-Host "  $key" -ForegroundColor Cyan
        Write-Host "    Path: $path" -ForegroundColor Gray
        
        $totalChecks++
        $ok = $linkInfo.Status -ne "missing"
        
        if ($ok) {
            $detail = "$($linkInfo.Icon) $($linkInfo.Status)"
            if ($linkInfo.Target) {
                $detail += " -> $($linkInfo.Target)"
            }
            if (Write-CheckResult "    Exists" $true $detail) { $passedChecks++ }
            
            # Record agents link type for summary
            if ($key -like "*Agents*") {
                $agentsLinkType = $linkInfo.Status
            }
            
            # Check junction targets
            if ($linkInfo.IsJunction -and $linkInfo.Target) {
                $expectedTarget = switch -Wildcard ($key) {
                    "*Skills*" { $script:SSOT_SKILLS }
                    "*Agents*" { $compiledAgents }  # Must point to compiled
                }
                $totalChecks++
                $targetOk = $linkInfo.Target -eq $expectedTarget
                if (Write-CheckResult "    Target correct" $targetOk) { 
                    $passedChecks++ 
                } else { 
                    $issues += "${key}: junction target mismatch - expected: $expectedTarget, got: $($linkInfo.Target)" 
                }
            }
        } else {
            if (-not (Write-CheckResult "    Exists" $false "missing - run install.ps1")) { 
                $issues += "${key}: missing - run install.ps1 -Mode $Mode" 
            }
        }
        Write-Host ""
    }
    
    # Check catalog target if mode is catalog
    if ($Mode -eq "catalog") {
        $catalogDest = Join-Path (Split-Path $script:TARGETS["Claude_Agents"] -Parent) "agents-catalog"
        $linkInfo = Get-LinkStatus -Path $catalogDest
        
        Write-Host "  Claude_Agents_Catalog" -ForegroundColor Cyan
        Write-Host "    Path: $catalogDest" -ForegroundColor Gray
        
        $totalChecks++
        $ok = $linkInfo.Status -ne "missing"
        if ($ok) {
            $detail = "$($linkInfo.Icon) $($linkInfo.Status)"
            if (Write-CheckResult "    Exists" $true $detail) { $passedChecks++ }
        } else {
            if (-not (Write-CheckResult "    Exists" $false "missing")) { $issues += "Catalog: missing" }
        }
        Write-Host ""
    }
    #endregion
    
    #region Meta & Registry Check
    Write-Host "Meta & Registry" -ForegroundColor Yellow
    Write-Host ""
    
    $metaPath = Join-Path $script:SSOT_BASE "meta"
    $metaFiles = @("playbook.yaml", "registry.yaml")
    
    foreach ($file in $metaFiles) {
        $filePath = Join-Path $metaPath $file
        $totalChecks++
        $ok = Test-Path $filePath
        if (Write-CheckResult "  meta/$file" $ok) { $passedChecks++ } else { $issues += "Meta: $file missing" }
    }
    
    $registryPath = Join-Path $script:SSOT_BASE "registry"
    $registryFiles = @("SKILLS_REGISTRY.md", "SUBAGENTS_REGISTRY.md", "START_HERE.md")
    
    foreach ($file in $registryFiles) {
        $filePath = Join-Path $registryPath $file
        $totalChecks++
        $ok = Test-Path $filePath
        if (Write-CheckResult "  registry/$file" $ok) { $passedChecks++ } else { $issues += "Registry: $file missing" }
    }
    #endregion
    
    #region Summary
    Write-Host ""
    Write-Host "========================================" -ForegroundColor $(if ($passedChecks -eq $totalChecks) { "Green" } else { "Yellow" })
    Write-Host "  Summary" -ForegroundColor $(if ($passedChecks -eq $totalChecks) { "Green" } else { "Yellow" })
    Write-Host "========================================" -ForegroundColor $(if ($passedChecks -eq $totalChecks) { "Green" } else { "Yellow" })
    Write-Host ""
    
    # Show key info
    if ($buildLock -and $buildLock.PlaybookVersion) {
        Write-Host "  playbook_version: v$($buildLock.PlaybookVersion)" -ForegroundColor Cyan
    }
    Write-Host "  agents_link:      $agentsLinkType" -ForegroundColor $(if ($agentsLinkType -eq "junction") { "Green" } elseif ($agentsLinkType -eq "copy") { "Yellow" } else { "Red" })
    Write-Host ""
    
    Write-Host "  Total:  $totalChecks checks"
    Write-Host "  Passed: " -NoNewline
    Write-Host "$passedChecks" -ForegroundColor Green
    Write-Host "  Failed: " -NoNewline
    Write-Host "$($totalChecks - $passedChecks)" -ForegroundColor $(if ($totalChecks -eq $passedChecks) { "Green" } else { "Red" })
    Write-Host ""
    
    if ($passedChecks -eq $totalChecks) {
        Write-Host "  ✅ All checks passed!" -ForegroundColor Green
    } else {
        Write-Host "  ⚠️  Issues found:" -ForegroundColor Yellow
        foreach ($issue in $issues) {
            Write-Host "    - $issue" -ForegroundColor Red
        }
        Write-Host ""
        Write-Host "  Repair commands:" -ForegroundColor Yellow
        Write-Host "    .\update.ps1 -Mode $Mode  # Try update first" -ForegroundColor Cyan
        Write-Host "    .\install.ps1 -Mode $Mode # Full reinstall" -ForegroundColor Cyan
        
        if ($Fix) {
            Write-Host ""
            Write-Host "  -Fix flag detected. Running repair..." -ForegroundColor Cyan
            $installScript = Join-Path $PSScriptRoot "install.ps1"
            if (Test-Path $installScript) {
                & $installScript -Mode $Mode
            }
        }
    }
    
    Write-Host ""
    exit $(if ($passedChecks -eq $totalChecks) { 0 } else { 1 })
}

Main
#endregion

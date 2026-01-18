<#
.SYNOPSIS
    AI Playbook 診断スクリプト
.DESCRIPTION
    期待されるパスに必要ファイルが揃っているかチェックし、OK/NGを一覧出力。
    リンク/コピーの状態を表示し、壊れている場合の修復コマンドを提示。
.EXAMPLE
    .\doctor.ps1
    .\doctor.ps1 -Mode catalog
    .\doctor.ps1 -Fix
#>

[CmdletBinding()]
param(
    [ValidateSet("minimal", "catalog")]
    [string]$Mode = "minimal",
    
    [switch]$Fix
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Continue"

#region Load Config
$script:ConfigPath = Join-Path $PSScriptRoot "config.psd1"
if (-not (Test-Path $script:ConfigPath)) {
    Write-Error "config.psd1 not found: $script:ConfigPath"
    exit 1
}
$script:Config = Import-PowerShellDataFile -Path $script:ConfigPath

$script:SSOT_BASE = $script:Config.SSOTBase
$script:SSOT_SKILLS = Join-Path $SSOT_BASE "skills"
$script:SSOT_AGENTS_MINIMAL = Join-Path $SSOT_BASE "subagents\minimal"
$script:SSOT_AGENTS_CATALOG = Join-Path $SSOT_BASE "subagents\catalog"

# Expand %USERPROFILE% in target paths
$script:TARGETS = @{}
foreach ($key in $script:Config.Targets.Keys) {
    $script:TARGETS[$key] = $script:Config.Targets[$key] -replace '%USERPROFILE%', $env:USERPROFILE
}

$script:EXPECTED_SKILLS = $script:Config.ExpectedSkills
$script:EXPECTED_AGENTS_MINIMAL = $script:Config.ExpectedAgentsMinimal
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

function Test-IsJunction {
    param([string]$Path)
    if (-not (Test-Path $Path)) { return $false }
    $item = Get-Item $Path -Force
    return ($item.Attributes -band [System.IO.FileAttributes]::ReparsePoint) -ne 0
}

function Get-LinkStatus {
    param([string]$Path)
    if (-not (Test-Path $Path)) {
        return @{ Status = "missing"; Icon = "❌" }
    } elseif (Test-IsJunction $Path) {
        # Get junction target
        $target = (Get-Item $Path).Target
        return @{ Status = "junction"; Icon = "🔗"; Target = $target }
    } else {
        return @{ Status = "copy"; Icon = "📁" }
    }
}

function Get-JunctionTarget {
    param([string]$Path)
    if (Test-IsJunction $Path) {
        return (Get-Item $Path -Force).Target
    }
    return $null
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
        if (Write-CheckResult "  $skill/SKILL.md" $ok) { $passedChecks++ } else { $issues += "SSOT: $skill missing" }
    }
    
    # Check minimal agents
    Write-Host ""
    $totalChecks++
    $ok = Test-Path $script:SSOT_AGENTS_MINIMAL
    if (Write-CheckResult "subagents/minimal/" $ok) { $passedChecks++ } else { $issues += "SSOT: minimal/ missing" }
    
    foreach ($agent in $script:EXPECTED_AGENTS_MINIMAL) {
        $agentPath = Join-Path $script:SSOT_AGENTS_MINIMAL $agent
        $totalChecks++
        $ok = Test-Path $agentPath
        if (Write-CheckResult "  $agent" $ok) { $passedChecks++ } else { $issues += "SSOT: $agent missing" }
    }
    
    # Check catalog if mode is catalog
    if ($Mode -eq "catalog") {
        Write-Host ""
        $totalChecks++
        $ok = Test-Path $script:SSOT_AGENTS_CATALOG
        if (Write-CheckResult "subagents/catalog/" $ok) { $passedChecks++ } else { $issues += "SSOT: catalog/ missing" }
        
        foreach ($category in $script:CATALOG_CATEGORIES) {
            $catPath = Join-Path $script:SSOT_AGENTS_CATALOG $category
            $totalChecks++
            $ok = Test-Path $catPath
            if (Write-CheckResult "  $category/" $ok) { $passedChecks++ } else { $issues += "SSOT: catalog/$category missing" }
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
            
            # Verify junction target points to correct SSOT
            if ($linkInfo.Status -eq "junction" -and $linkInfo.Target) {
                $expectedTarget = switch -Wildcard ($key) {
                    "*Skills*" { $script:SSOT_SKILLS }
                    "*Agents*" { $script:SSOT_AGENTS_MINIMAL }
                }
                $totalChecks++
                $targetOk = $linkInfo.Target -eq $expectedTarget
                if (Write-CheckResult "    Target correct" $targetOk) { $passedChecks++ } else { $issues += "${key}: junction target mismatch" }
            }
        } else {
            if (-not (Write-CheckResult "    Exists" $false "missing")) { $issues += "${key}: missing" }
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
    
    #region Registry Check
    Write-Host "Registry Integrity" -ForegroundColor Yellow
    Write-Host ""
    
    $registryPath = Join-Path $script:SSOT_BASE "registry"
    $registryFiles = @("SKILLS_REGISTRY.md", "SUBAGENTS_REGISTRY.md", "START_HERE.md")
    
    foreach ($file in $registryFiles) {
        $filePath = Join-Path $registryPath $file
        $totalChecks++
        $ok = Test-Path $filePath
        if (Write-CheckResult "  $file" $ok) { $passedChecks++ } else { $issues += "Registry: $file missing" }
    }
    #endregion
    
    #region Summary
    Write-Host ""
    Write-Host "========================================" -ForegroundColor $(if ($passedChecks -eq $totalChecks) { "Green" } else { "Yellow" })
    Write-Host "  Summary" -ForegroundColor $(if ($passedChecks -eq $totalChecks) { "Green" } else { "Yellow" })
    Write-Host "========================================" -ForegroundColor $(if ($passedChecks -eq $totalChecks) { "Green" } else { "Yellow" })
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
        Write-Host "  Repair command:" -ForegroundColor Yellow
        Write-Host "    .\install.ps1 -Mode $Mode" -ForegroundColor Cyan
        
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

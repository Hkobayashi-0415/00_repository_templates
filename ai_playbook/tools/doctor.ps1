<#
.SYNOPSIS
    AI Playbook 診断スクリプト
.DESCRIPTION
    期待されるパスに必要ファイルが揃っているかチェックし、OK/NGを一覧出力します。
.EXAMPLE
    .\doctor.ps1
    .\doctor.ps1 -Verbose
    .\doctor.ps1 -Fix
#>

[CmdletBinding()]
param(
    [switch]$Fix
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Continue"

#region Configuration
$script:SSOT_BASE = "D:\dev\00_repository_templates\ai_playbook"
$script:SSOT_SKILLS = Join-Path $SSOT_BASE "skills"
$script:SSOT_SUBAGENTS = Join-Path $SSOT_BASE "subagents"
$script:SSOT_REGISTRY = Join-Path $SSOT_BASE "registry"

# 配布先定義
$script:TARGETS = @{
    "Claude_Skills" = Join-Path $env:USERPROFILE ".claude\skills"
    "Claude_Agents" = Join-Path $env:USERPROFILE ".claude\agents"
    "Codex_Skills"  = Join-Path $env:USERPROFILE ".codex\skills"
}

# 期待されるスキル
$script:EXPECTED_SKILLS = @(
    "phase-planning",
    "bug-investigation",
    "code-review",
    "worklog-update"
)

# 期待されるエージェント
$script:EXPECTED_AGENTS = @(
    "planner.md",
    "implementer.md",
    "reviewer.md"
)

# 期待されるレジストリ
$script:EXPECTED_REGISTRY = @(
    "SKILLS_REGISTRY.md",
    "SUBAGENTS_REGISTRY.md"
)
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
        Write-Host " - " -NoNewline
        Write-Host $Detail -ForegroundColor Gray
    } else {
        Write-Host ""
    }
    
    return $OK
}

function Test-Directory {
    param([string]$Path)
    return Test-Path $Path -PathType Container
}

function Test-File {
    param([string]$Path)
    return Test-Path $Path -PathType Leaf
}

function Get-SkillsInDirectory {
    param([string]$Path)
    
    if (-not (Test-Directory $Path)) {
        return @()
    }
    
    return Get-ChildItem -Path $Path -Directory | Select-Object -ExpandProperty Name
}

function Get-AgentsInDirectory {
    param([string]$Path)
    
    if (-not (Test-Directory $Path)) {
        return @()
    }
    
    return Get-ChildItem -Path $Path -Filter "*.md" | Select-Object -ExpandProperty Name
}

function Test-SkillStructure {
    param(
        [string]$SkillPath,
        [string]$SkillName
    )
    
    $issues = @()
    
    # Check SKILL.md exists
    $skillMd = Join-Path $SkillPath "SKILL.md"
    if (-not (Test-File $skillMd)) {
        $issues += "Missing SKILL.md"
    }
    
    return $issues
}
#endregion

#region Main
function Main {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "  AI Playbook Doctor" -ForegroundColor Cyan
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
    
    $totalChecks = 0
    $passedChecks = 0
    $issues = @()
    
    #region SSOT Checks
    Write-Host "SSOT (Source of Truth)" -ForegroundColor Yellow
    Write-Host "  Path: $script:SSOT_BASE" -ForegroundColor Gray
    Write-Host ""
    
    # Check SSOT directories
    $totalChecks++
    $ok = Test-Directory $script:SSOT_SKILLS
    if (Write-CheckResult "skills/" $ok) { $passedChecks++ } else { $issues += "SSOT: skills/ missing" }
    
    $totalChecks++
    $ok = Test-Directory $script:SSOT_SUBAGENTS
    if (Write-CheckResult "subagents/" $ok) { $passedChecks++ } else { $issues += "SSOT: subagents/ missing" }
    
    $totalChecks++
    $ok = Test-Directory $script:SSOT_REGISTRY
    if (Write-CheckResult "registry/" $ok) { $passedChecks++ } else { $issues += "SSOT: registry/ missing" }
    
    # Check expected skills
    Write-Host ""
    Write-Host "  Skills:" -ForegroundColor Gray
    foreach ($skill in $script:EXPECTED_SKILLS) {
        $skillPath = Join-Path $script:SSOT_SKILLS $skill
        $totalChecks++
        $ok = Test-Directory $skillPath
        $detail = ""
        
        if ($ok) {
            $skillIssues = Test-SkillStructure -SkillPath $skillPath -SkillName $skill
            if ($skillIssues.Count -gt 0) {
                $ok = $false
                $detail = $skillIssues -join ", "
            }
        }
        
        if (Write-CheckResult "    $skill" $ok $detail) { $passedChecks++ } else { $issues += "SSOT: $skill has issues" }
    }
    
    # Check expected agents
    Write-Host ""
    Write-Host "  Agents:" -ForegroundColor Gray
    foreach ($agent in $script:EXPECTED_AGENTS) {
        $agentPath = Join-Path $script:SSOT_SUBAGENTS $agent
        $totalChecks++
        $ok = Test-File $agentPath
        if (Write-CheckResult "    $agent" $ok) { $passedChecks++ } else { $issues += "SSOT: $agent missing" }
    }
    
    # Check registry files
    Write-Host ""
    Write-Host "  Registry:" -ForegroundColor Gray
    foreach ($reg in $script:EXPECTED_REGISTRY) {
        $regPath = Join-Path $script:SSOT_REGISTRY $reg
        $totalChecks++
        $ok = Test-File $regPath
        if (Write-CheckResult "    $reg" $ok) { $passedChecks++ } else { $issues += "SSOT: $reg missing" }
    }
    #endregion
    
    #region Target Checks
    Write-Host ""
    Write-Host "Targets (Installed Locations)" -ForegroundColor Yellow
    Write-Host ""
    
    foreach ($targetName in $script:TARGETS.Keys) {
        $targetPath = $script:TARGETS[$targetName]
        Write-Host "  $targetName" -ForegroundColor Cyan
        Write-Host "  Path: $targetPath" -ForegroundColor Gray
        
        $totalChecks++
        $dirExists = Test-Directory $targetPath
        if (Write-CheckResult "    Directory exists" $dirExists) { 
            $passedChecks++ 
        } else { 
            $issues += "$targetName missing"
            Write-Host ""
            continue
        }
        
        # Check skills if this is a skills target
        if ($targetName -like "*Skills*") {
            foreach ($skill in $script:EXPECTED_SKILLS) {
                $skillPath = Join-Path $targetPath $skill
                $totalChecks++
                $ok = Test-Directory $skillPath
                if ($ok) {
                    $skillMd = Join-Path $skillPath "SKILL.md"
                    $ok = Test-File $skillMd
                }
                if (Write-CheckResult "    $skill" $ok) { $passedChecks++ } else { $issues += "$targetName $skill missing" }
            }
            
            # Check registry in skills folder
            foreach ($reg in $script:EXPECTED_REGISTRY) {
                $regPath = Join-Path $targetPath $reg
                $totalChecks++
                $ok = Test-File $regPath
                if (Write-CheckResult "    $reg" $ok) { $passedChecks++ } else { $issues += "$targetName $reg missing" }
            }
        }
        
        # Check agents if this is an agents target
        if ($targetName -like "*Agents*") {
            foreach ($agent in $script:EXPECTED_AGENTS) {
                $agentPath = Join-Path $targetPath $agent
                $totalChecks++
                $ok = Test-File $agentPath
                if (Write-CheckResult "    $agent" $ok) { $passedChecks++ } else { $issues += "$targetName $agent missing" }
            }
        }
        
        Write-Host ""
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
    Write-Host "$passedChecks" -ForegroundColor Green -NoNewline
    Write-Host ""
    Write-Host "  Failed: " -NoNewline
    Write-Host "$($totalChecks - $passedChecks)" -ForegroundColor $(if ($totalChecks -eq $passedChecks) { "Green" } else { "Red" }) -NoNewline
    Write-Host ""
    Write-Host ""
    
    if ($passedChecks -eq $totalChecks) {
        Write-Host "  ✅ All checks passed!" -ForegroundColor Green
    } else {
        Write-Host "  ⚠️  Some checks failed:" -ForegroundColor Yellow
        foreach ($issue in $issues) {
            Write-Host "    - $issue" -ForegroundColor Red
        }
        Write-Host ""
        Write-Host "  Recommended action:" -ForegroundColor Yellow
        Write-Host "    Run '.\install.ps1' to install missing files." -ForegroundColor Yellow
        Write-Host "    Run '.\update.ps1' to sync from SSOT." -ForegroundColor Yellow
        
        if ($Fix) {
            Write-Host ""
            Write-Host "  -Fix flag detected. Running install..." -ForegroundColor Cyan
            $installScript = Join-Path $PSScriptRoot "install.ps1"
            if (Test-Path $installScript) {
                & $installScript
            } else {
                Write-Host "  install.ps1 not found!" -ForegroundColor Red
            }
        }
    }
    
    Write-Host ""
    
    exit $(if ($passedChecks -eq $totalChecks) { 0 } else { 1 })
}

Main
#endregion

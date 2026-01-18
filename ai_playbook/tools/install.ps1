<#
.SYNOPSIS
    AI Playbook インストールスクリプト
.DESCRIPTION
    SSOTからSkillsとAgentsを各ツールのユーザー領域にコピーします。
    初回インストール用。既存ファイルがあっても上書きします。
.EXAMPLE
    .\install.ps1
    .\install.ps1 -WhatIf
    .\install.ps1 -Verbose
#>

[CmdletBinding(SupportsShouldProcess)]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

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
#endregion

#region Functions
function Write-Step {
    param([string]$Message)
    Write-Host "[INSTALL] " -ForegroundColor Cyan -NoNewline
    Write-Host $Message
}

function Write-Success {
    param([string]$Message)
    Write-Host "[OK] " -ForegroundColor Green -NoNewline
    Write-Host $Message
}

function Write-Failure {
    param([string]$Message)
    Write-Host "[ERROR] " -ForegroundColor Red -NoNewline
    Write-Host $Message
}

function Test-SSOTExists {
    $requiredPaths = @(
        $script:SSOT_SKILLS,
        $script:SSOT_SUBAGENTS,
        $script:SSOT_REGISTRY
    )
    
    foreach ($path in $requiredPaths) {
        if (-not (Test-Path $path)) {
            Write-Failure "SSOT path not found: $path"
            return $false
        }
    }
    return $true
}

function New-TargetDirectory {
    param([string]$Path)
    
    if (-not (Test-Path $Path)) {
        if ($PSCmdlet.ShouldProcess($Path, "Create directory")) {
            New-Item -ItemType Directory -Path $Path -Force | Out-Null
            Write-Verbose "Created directory: $Path"
        }
    }
}

function Copy-SkillsToTarget {
    param(
        [string]$SourcePath,
        [string]$TargetPath
    )
    
    if (-not (Test-Path $SourcePath)) {
        Write-Failure "Source not found: $SourcePath"
        return $false
    }
    
    New-TargetDirectory -Path $TargetPath
    
    $skills = Get-ChildItem -Path $SourcePath -Directory
    $copied = 0
    
    foreach ($skill in $skills) {
        $dest = Join-Path $TargetPath $skill.Name
        if ($PSCmdlet.ShouldProcess($skill.FullName, "Copy to $dest")) {
            Copy-Item -Path $skill.FullName -Destination $dest -Recurse -Force
            $copied++
            Write-Verbose "Copied: $($skill.Name)"
        }
    }
    
    Write-Success "Copied $copied skills to $TargetPath"
    return $true
}

function Copy-AgentsToTarget {
    param(
        [string]$SourcePath,
        [string]$TargetPath
    )
    
    if (-not (Test-Path $SourcePath)) {
        Write-Failure "Source not found: $SourcePath"
        return $false
    }
    
    New-TargetDirectory -Path $TargetPath
    
    $agents = Get-ChildItem -Path $SourcePath -Filter "*.md"
    $copied = 0
    
    foreach ($agent in $agents) {
        $dest = Join-Path $TargetPath $agent.Name
        if ($PSCmdlet.ShouldProcess($agent.FullName, "Copy to $dest")) {
            Copy-Item -Path $agent.FullName -Destination $dest -Force
            $copied++
            Write-Verbose "Copied: $($agent.Name)"
        }
    }
    
    Write-Success "Copied $copied agents to $TargetPath"
    return $true
}

function Copy-RegistryToTarget {
    param(
        [string]$SourcePath,
        [string]$TargetPath
    )
    
    if (-not (Test-Path $SourcePath)) {
        Write-Failure "Registry not found: $SourcePath"
        return $false
    }
    
    New-TargetDirectory -Path $TargetPath
    
    $registryFiles = Get-ChildItem -Path $SourcePath -Filter "*.md"
    $copied = 0
    
    foreach ($file in $registryFiles) {
        $dest = Join-Path $TargetPath $file.Name
        if ($PSCmdlet.ShouldProcess($file.FullName, "Copy to $dest")) {
            Copy-Item -Path $file.FullName -Destination $dest -Force
            $copied++
            Write-Verbose "Copied: $($file.Name)"
        }
    }
    
    return $true
}
#endregion

#region Main
function Main {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "  AI Playbook Installer" -ForegroundColor Cyan
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
    
    # Step 1: Verify SSOT
    Write-Step "Verifying SSOT..."
    if (-not (Test-SSOTExists)) {
        Write-Failure "SSOT verification failed. Aborting."
        exit 1
    }
    Write-Success "SSOT verified: $script:SSOT_BASE"
    
    # Step 2: Install to Claude
    Write-Host ""
    Write-Step "Installing to Claude..."
    
    $claudeSkillsOk = Copy-SkillsToTarget -SourcePath $script:SSOT_SKILLS -TargetPath $script:TARGETS["Claude_Skills"]
    $claudeAgentsOk = Copy-AgentsToTarget -SourcePath $script:SSOT_SUBAGENTS -TargetPath $script:TARGETS["Claude_Agents"]
    
    # Copy registry to Claude skills folder
    Copy-RegistryToTarget -SourcePath $script:SSOT_REGISTRY -TargetPath $script:TARGETS["Claude_Skills"]
    
    # Step 3: Install to Codex
    Write-Host ""
    Write-Step "Installing to Codex..."
    
    $codexSkillsOk = Copy-SkillsToTarget -SourcePath $script:SSOT_SKILLS -TargetPath $script:TARGETS["Codex_Skills"]
    
    # Copy registry to Codex skills folder
    Copy-RegistryToTarget -SourcePath $script:SSOT_REGISTRY -TargetPath $script:TARGETS["Codex_Skills"]
    
    # Summary
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "  Installation Complete!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Installed to:"
    foreach ($key in $script:TARGETS.Keys) {
        Write-Host "  - $($script:TARGETS[$key])"
    }
    Write-Host ""
    Write-Host "Run '.\doctor.ps1' to verify installation." -ForegroundColor Yellow
    Write-Host ""
    
    exit 0
}

Main
#endregion

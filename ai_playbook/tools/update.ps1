<#
.SYNOPSIS
    AI Playbook アップデートスクリプト
.DESCRIPTION
    SSOTから差分のみを各ツールのユーザー領域に同期します。
    robocopyを使用して高速な差分同期を実現。
.EXAMPLE
    .\update.ps1
    .\update.ps1 -WhatIf
    .\update.ps1 -Verbose
    .\update.ps1 -Force
#>

[CmdletBinding(SupportsShouldProcess)]
param(
    [switch]$Force
)

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
    Write-Host "[UPDATE] " -ForegroundColor Cyan -NoNewline
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

function Write-Info {
    param([string]$Message)
    Write-Host "[INFO] " -ForegroundColor Yellow -NoNewline
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

function Test-TargetExists {
    param([string]$Path)
    return Test-Path $Path
}

function Sync-WithRobocopy {
    param(
        [string]$Source,
        [string]$Destination,
        [string]$Description,
        [switch]$MirrorMode
    )
    
    if (-not (Test-Path $Source)) {
        Write-Failure "Source not found: $Source"
        return $false
    }
    
    # Create destination if not exists
    if (-not (Test-Path $Destination)) {
        if ($PSCmdlet.ShouldProcess($Destination, "Create directory")) {
            New-Item -ItemType Directory -Path $Destination -Force | Out-Null
        }
    }
    
    Write-Step "Syncing $Description..."
    
    if ($WhatIfPreference) {
        Write-Info "WhatIf: Would sync $Source -> $Destination"
        return $true
    }
    
    # robocopy options:
    # /E = Copy subdirectories including empty ones
    # /MIR = Mirror mode (delete files in destination not in source) - optional
    # /XO = Exclude older files
    # /NJH = No job header
    # /NJS = No job summary
    # /NDL = No directory list
    # /NP = No progress
    # /R:1 = Retry once
    # /W:1 = Wait 1 second between retries
    
    $robocopyArgs = @(
        "`"$Source`"",
        "`"$Destination`"",
        "/E",
        "/XO",
        "/NJH",
        "/NJS",
        "/NDL",
        "/NP",
        "/R:1",
        "/W:1"
    )
    
    if ($MirrorMode -or $Force) {
        $robocopyArgs += "/MIR"
        Write-Info "Mirror mode enabled (Force=$Force)"
    }
    
    $result = Start-Process -FilePath "robocopy" -ArgumentList $robocopyArgs -NoNewWindow -Wait -PassThru
    
    # robocopy exit codes:
    # 0 = No files copied
    # 1 = Files copied successfully
    # 2 = Extra files or directories detected
    # 4 = Mismatched files
    # 8+ = Error
    
    if ($result.ExitCode -lt 8) {
        $filesCopied = $result.ExitCode -band 1
        if ($filesCopied) {
            Write-Success "$Description: Files updated"
        } else {
            Write-Success "$Description: Already up to date"
        }
        return $true
    } else {
        Write-Failure "$Description: Robocopy error (exit code: $($result.ExitCode))"
        return $false
    }
}

function Sync-FilesToTarget {
    param(
        [string]$Source,
        [string]$Destination,
        [string]$Description
    )
    
    if (-not (Test-Path $Source)) {
        Write-Failure "Source not found: $Source"
        return $false
    }
    
    if (-not (Test-Path $Destination)) {
        if ($PSCmdlet.ShouldProcess($Destination, "Create directory")) {
            New-Item -ItemType Directory -Path $Destination -Force | Out-Null
        }
    }
    
    Write-Step "Syncing $Description..."
    
    $files = Get-ChildItem -Path $Source -Filter "*.md"
    $updated = 0
    $skipped = 0
    
    foreach ($file in $files) {
        $destFile = Join-Path $Destination $file.Name
        $needsCopy = $true
        
        if (Test-Path $destFile) {
            $sourceTime = $file.LastWriteTime
            $destTime = (Get-Item $destFile).LastWriteTime
            if ($destTime -ge $sourceTime -and -not $Force) {
                $needsCopy = $false
                $skipped++
            }
        }
        
        if ($needsCopy) {
            if ($PSCmdlet.ShouldProcess($file.FullName, "Copy to $destFile")) {
                Copy-Item -Path $file.FullName -Destination $destFile -Force
                $updated++
                Write-Verbose "Updated: $($file.Name)"
            }
        }
    }
    
    Write-Success "$Description: $updated updated, $skipped skipped"
    return $true
}
#endregion

#region Main
function Main {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "  AI Playbook Updater" -ForegroundColor Cyan
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
    
    # Step 1: Verify SSOT
    Write-Step "Verifying SSOT..."
    if (-not (Test-SSOTExists)) {
        Write-Failure "SSOT verification failed. Run install.ps1 first?"
        exit 1
    }
    Write-Success "SSOT verified: $script:SSOT_BASE"
    
    # Step 2: Check targets exist
    $missingTargets = @()
    foreach ($key in $script:TARGETS.Keys) {
        if (-not (Test-TargetExists -Path $script:TARGETS[$key])) {
            $missingTargets += $key
        }
    }
    
    if ($missingTargets.Count -gt 0 -and -not $Force) {
        Write-Info "Some targets don't exist. Run install.ps1 first or use -Force."
        foreach ($target in $missingTargets) {
            Write-Info "  Missing: $($script:TARGETS[$target])"
        }
    }
    
    $allOk = $true
    
    # Step 3: Update Claude Skills
    Write-Host ""
    $result = Sync-WithRobocopy `
        -Source $script:SSOT_SKILLS `
        -Destination $script:TARGETS["Claude_Skills"] `
        -Description "Claude Skills"
    $allOk = $allOk -and $result
    
    # Step 4: Update Claude Agents
    $result = Sync-FilesToTarget `
        -Source $script:SSOT_SUBAGENTS `
        -Destination $script:TARGETS["Claude_Agents"] `
        -Description "Claude Agents"
    $allOk = $allOk -and $result
    
    # Step 5: Update Codex Skills
    Write-Host ""
    $result = Sync-WithRobocopy `
        -Source $script:SSOT_SKILLS `
        -Destination $script:TARGETS["Codex_Skills"] `
        -Description "Codex Skills"
    $allOk = $allOk -and $result
    
    # Step 6: Update Registry files
    Write-Host ""
    Sync-FilesToTarget -Source $script:SSOT_REGISTRY -Destination $script:TARGETS["Claude_Skills"] -Description "Claude Registry"
    Sync-FilesToTarget -Source $script:SSOT_REGISTRY -Destination $script:TARGETS["Codex_Skills"] -Description "Codex Registry"
    
    # Summary
    Write-Host ""
    if ($allOk) {
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "  Update Complete!" -ForegroundColor Green
        Write-Host "========================================" -ForegroundColor Green
    } else {
        Write-Host "========================================" -ForegroundColor Yellow
        Write-Host "  Update completed with warnings" -ForegroundColor Yellow
        Write-Host "========================================" -ForegroundColor Yellow
    }
    Write-Host ""
    Write-Host "Run '.\doctor.ps1' to verify." -ForegroundColor Yellow
    Write-Host ""
    
    exit $(if ($allOk) { 0 } else { 1 })
}

Main
#endregion

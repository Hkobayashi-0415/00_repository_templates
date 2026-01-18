<#
.SYNOPSIS
    AI Playbook インストールスクリプト（junction優先）
.DESCRIPTION
    SSOTからSkillsとSubagentsを各ツールのユーザー領域にjunctionで配布します。
    junctionが作成できない場合はコピーにフォールバック。
.EXAMPLE
    .\install.ps1
    .\install.ps1 -Mode minimal
    .\install.ps1 -Mode catalog
    .\install.ps1 -UseCopy
    .\install.ps1 -WhatIf
#>

[CmdletBinding(SupportsShouldProcess)]
param(
    [ValidateSet("minimal", "catalog")]
    [string]$Mode = "minimal",
    
    [switch]$UseCopy
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

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

function Write-Info {
    param([string]$Message)
    Write-Host "[INFO] " -ForegroundColor Yellow -NoNewline
    Write-Host $Message
}

function Test-SSOTExists {
    $requiredPaths = @($script:SSOT_SKILLS, $script:SSOT_AGENTS_MINIMAL)
    foreach ($path in $requiredPaths) {
        if (-not (Test-Path $path)) {
            Write-Failure "SSOT path not found: $path"
            return $false
        }
    }
    return $true
}

function Test-IsJunction {
    param([string]$Path)
    if (-not (Test-Path $Path)) { return $false }
    $item = Get-Item $Path -Force
    return ($item.Attributes -band [System.IO.FileAttributes]::ReparsePoint) -ne 0
}

function Remove-ExistingLink {
    param([string]$Path)
    if (Test-Path $Path) {
        if (Test-IsJunction $Path) {
            # Remove junction (directory link)
            cmd /c rmdir "$Path" 2>$null
        } else {
            # Remove regular directory
            Remove-Item -Path $Path -Recurse -Force
        }
    }
}

function New-Junction {
    param(
        [string]$LinkPath,
        [string]$TargetPath,
        [string]$Description
    )
    
    Write-Step "Creating junction: $Description"
    
    # Ensure parent directory exists
    $parent = Split-Path $LinkPath -Parent
    if (-not (Test-Path $parent)) {
        if ($PSCmdlet.ShouldProcess($parent, "Create directory")) {
            New-Item -ItemType Directory -Path $parent -Force | Out-Null
        }
    }
    
    if ($PSCmdlet.ShouldProcess($LinkPath, "Create junction to $TargetPath")) {
        Remove-ExistingLink -Path $LinkPath
        cmd /c mklink /J "$LinkPath" "$TargetPath" | Out-Null
        
        if (Test-IsJunction $LinkPath) {
            Write-Success "$Description -> junction created"
            return $true
        } else {
            Write-Failure "$Description -> junction failed"
            return $false
        }
    }
    return $true
}

function Copy-Directory {
    param(
        [string]$Source,
        [string]$Destination,
        [string]$Description
    )
    
    Write-Step "Copying: $Description"
    
    if ($PSCmdlet.ShouldProcess($Source, "Copy to $Destination")) {
        # Ensure parent directory exists
        $parent = Split-Path $Destination -Parent
        if (-not (Test-Path $parent)) {
            New-Item -ItemType Directory -Path $parent -Force | Out-Null
        }
        
        Remove-ExistingLink -Path $Destination
        Copy-Item -Path $Source -Destination $Destination -Recurse -Force
        Write-Success "$Description -> copied"
        return $true
    }
    return $true
}

function Install-Component {
    param(
        [string]$Source,
        [string]$Destination,
        [string]$Description,
        [bool]$UseJunction
    )
    
    if (-not (Test-Path $Source)) {
        Write-Failure "Source not found: $Source"
        return $false
    }
    
    if ($UseJunction) {
        return New-Junction -LinkPath $Destination -TargetPath $Source -Description $Description
    } else {
        return Copy-Directory -Source $Source -Destination $Destination -Description $Description
    }
}
#endregion

#region Main
function Main {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "  AI Playbook Installer" -ForegroundColor Cyan
    Write-Host "  Mode: $Mode | Method: $(if($UseCopy){'copy'}else{'junction'})" -ForegroundColor Cyan
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
    
    # Verify SSOT
    Write-Step "Verifying SSOT..."
    if (-not (Test-SSOTExists)) {
        Write-Failure "SSOT verification failed."
        exit 1
    }
    Write-Success "SSOT: $script:SSOT_BASE"
    
    $useJunction = -not $UseCopy
    $allOk = $true
    
    # Install Codex Skills
    Write-Host ""
    $result = Install-Component `
        -Source $script:SSOT_SKILLS `
        -Destination $script:TARGETS["Codex_Skills"] `
        -Description "Codex Skills" `
        -UseJunction $useJunction
    $allOk = $allOk -and $result
    
    # Install Claude Skills
    $result = Install-Component `
        -Source $script:SSOT_SKILLS `
        -Destination $script:TARGETS["Claude_Skills"] `
        -Description "Claude Skills" `
        -UseJunction $useJunction
    $allOk = $allOk -and $result
    
    # Install Claude Agents (minimal)
    Write-Host ""
    $result = Install-Component `
        -Source $script:SSOT_AGENTS_MINIMAL `
        -Destination $script:TARGETS["Claude_Agents"] `
        -Description "Claude Agents (minimal)" `
        -UseJunction $useJunction
    $allOk = $allOk -and $result
    
    # Install Catalog if requested
    if ($Mode -eq "catalog") {
        $catalogDest = Join-Path (Split-Path $script:TARGETS["Claude_Agents"] -Parent) "agents-catalog"
        $result = Install-Component `
            -Source $script:SSOT_AGENTS_CATALOG `
            -Destination $catalogDest `
            -Description "Claude Agents (catalog)" `
            -UseJunction $useJunction
        $allOk = $allOk -and $result
    }
    
    # Summary
    Write-Host ""
    if ($allOk) {
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "  Installation Complete!" -ForegroundColor Green
        Write-Host "========================================" -ForegroundColor Green
    } else {
        Write-Host "========================================" -ForegroundColor Yellow
        Write-Host "  Installation completed with warnings" -ForegroundColor Yellow
        Write-Host "========================================" -ForegroundColor Yellow
    }
    Write-Host ""
    Write-Host "Installed to:"
    Write-Host "  - $($script:TARGETS['Codex_Skills'])"
    Write-Host "  - $($script:TARGETS['Claude_Skills'])"
    Write-Host "  - $($script:TARGETS['Claude_Agents'])"
    if ($Mode -eq "catalog") {
        Write-Host "  - $catalogDest"
    }
    Write-Host ""
    Write-Host "Run '.\doctor.ps1 -Mode $Mode' to verify." -ForegroundColor Yellow
    Write-Host ""
    
    exit $(if ($allOk) { 0 } else { 1 })
}

Main
#endregion

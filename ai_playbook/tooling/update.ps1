<#
.SYNOPSIS
    AI Playbook アップデートスクリプト
.DESCRIPTION
    junction時: リンク先がSSOTなので更新不要（常に最新）
    copy時: 差分同期を実行
.EXAMPLE
    .\update.ps1
    .\update.ps1 -Force
#>

[CmdletBinding(SupportsShouldProcess)]
param(
    [switch]$Force
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

# Expand %USERPROFILE% in target paths
$script:TARGETS = @{}
foreach ($key in $script:Config.Targets.Keys) {
    $script:TARGETS[$key] = $script:Config.Targets[$key] -replace '%USERPROFILE%', $env:USERPROFILE
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

function Write-Info {
    param([string]$Message)
    Write-Host "[INFO] " -ForegroundColor Yellow -NoNewline
    Write-Host $Message
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
        return "missing"
    } elseif (Test-IsJunction $Path) {
        return "junction"
    } else {
        return "copy"
    }
}
#endregion

#region Main
function Main {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "  AI Playbook Updater" -ForegroundColor Cyan
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
    
    $needsUpdate = @()
    
    foreach ($key in $script:TARGETS.Keys) {
        $path = $script:TARGETS[$key]
        $status = Get-LinkStatus -Path $path
        
        Write-Step "$key"
        
        switch ($status) {
            "junction" {
                Write-Success "Junction - 常にSSOTと同期済み（更新不要）"
            }
            "copy" {
                if ($Force) {
                    Write-Info "Copy - 強制更新対象"
                    $needsUpdate += @{ Key = $key; Path = $path }
                } else {
                    Write-Info "Copy - 更新が必要な場合は -Force を使用"
                }
            }
            "missing" {
                Write-Info "Missing - install.ps1 を実行してください"
            }
        }
    }
    
    if ($needsUpdate.Count -gt 0 -and $Force) {
        Write-Host ""
        Write-Step "Forcing update..."
        
        # Re-run install for copy targets
        $installScript = Join-Path $PSScriptRoot "install.ps1"
        if (Test-Path $installScript) {
            & $installScript -UseCopy
        }
    }
    
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "  Update Check Complete" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    
    if ($needsUpdate.Count -eq 0) {
        Write-Host "All targets are junctions - always in sync with SSOT." -ForegroundColor Green
    }
    
    Write-Host ""
    exit 0
}

Main
#endregion

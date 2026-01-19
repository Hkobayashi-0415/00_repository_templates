<#
.SYNOPSIS
    AI Playbook アップデートスクリプト（compiled再生成）
.DESCRIPTION
    compiledを再生成し、配布先を更新。
    junction時はリンク先がSSOT compiledなので更新不要。
    copy時は再生成してコピー。
.EXAMPLE
    .\update.ps1
    .\update.ps1 -Mode extended
    .\update.ps1 -Force
#>

[CmdletBinding(SupportsShouldProcess)]
param(
    [ValidateSet("minimal", "extended", "catalog")]
    [string]$Mode = "minimal",
    
    [switch]$Force
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

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
$script:TARGETS = $script:Config.Targets
#endregion

#region Main
function Main {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "  AI Playbook Updater" -ForegroundColor Cyan
    Write-Host "  Mode: $Mode" -ForegroundColor Cyan
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
    
    # Step 1: Rebuild compiled
    Write-Step "UPDATE" "Rebuilding compiled playbook..."
    try {
        $buildResult = Build-CompiledPlaybook -Mode $Mode -SSOTBase $script:SSOT_BASE
        if (-not $buildResult.Success) {
            Write-NG "Build failed"
            exit 1
        }
    } catch {
        Write-NG "Build failed: $_"
        exit 1
    }
    
    # Step 2: Check targets
    $compiledAgents = Get-CompiledAgentsPath -SSOTBase $script:SSOT_BASE
    $needsUpdate = @()
    
    foreach ($key in $script:TARGETS.Keys) {
        $path = $script:TARGETS[$key]
        
        Write-Step "UPDATE" "$key"
        
        if (-not (Test-Path $path)) {
            Write-Warn "Missing - run install.ps1 first"
            $needsUpdate += $key
            continue
        }
        
        if (Test-IsJunction $path) {
            $target = Get-JunctionTarget $path
            if ($key -like "*Agents*") {
                if ($target -eq $compiledAgents) {
                    Write-OK "Junction -> compiled (auto-updated)"
                } else {
                    Write-Warn "Junction points to wrong target: $target"
                    $needsUpdate += $key
                }
            } else {
                Write-OK "Junction - always in sync with SSOT"
            }
        } else {
            if ($Force) {
                Write-Warn "Copy - will re-sync from SSOT"
                $needsUpdate += $key
            } else {
                Write-Warn "Copy - use -Force to re-sync from SSOT"
            }
        }
    }
    
    if ($needsUpdate.Count -gt 0 -and $Force) {
        Write-Host ""
        Write-Step "UPDATE" "Re-installing to sync..."
        
        $installScript = Join-Path $PSScriptRoot "install.ps1"
        if (Test-Path $installScript) {
            & $installScript -Mode $Mode -UseCopy
        }
    }
    
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "  Update Complete" -ForegroundColor Green
    Write-Host "  Playbook Version: $($buildResult.Version)" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    
    exit 0
}

Main
#endregion

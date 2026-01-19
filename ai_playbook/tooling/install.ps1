<#
.SYNOPSIS
    AI Playbook インストールスクリプト（compiled固定方式）
.DESCRIPTION
    SSOTからSkillsとSubagentsを各ツールのユーザー領域に配布します。
    Subagentsは _compiled/claude/agents を生成し、そこをjunctionで参照。
.EXAMPLE
    .\install.ps1
    .\install.ps1 -Mode minimal
    .\install.ps1 -Mode extended
    .\install.ps1 -Mode catalog
    .\install.ps1 -UseCopy
    .\install.ps1 -WhatIf
#>

[CmdletBinding(SupportsShouldProcess)]
param(
    [ValidateSet("minimal", "extended", "catalog")]
    [string]$Mode = "minimal",
    
    [switch]$UseCopy
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
$script:SSOT_SKILLS = $script:Config.SSOTSkills
$script:SSOT_AGENTS_CATALOG = $script:Config.SSOTAgentsCatalog
$script:TARGETS = $script:Config.Targets
#endregion

#region Functions
function Test-SSOTExists {
    $requiredPaths = @(
        $script:SSOT_SKILLS,
        (Join-Path $script:SSOT_BASE "subagents\minimal")
    )
    if ($Mode -in @("extended", "catalog")) {
        $requiredPaths += (Join-Path $script:SSOT_BASE "subagents\extended")
    }
    foreach ($path in $requiredPaths) {
        if (-not (Test-Path $path)) {
            Write-NG "SSOT path not found: $path"
            return $false
        }
    }
    return $true
}

function Install-Component {
    param(
        [string]$Source,
        [string]$Destination,
        [string]$Description,
        [bool]$ForceCopy
    )
    
    if (-not (Test-Path $Source)) {
        Write-NG "$Description - Source not found: $Source"
        return $false
    }
    
    Write-Step "INSTALL" "Installing $Description..."
    
    if ($WhatIfPreference) {
        Write-Host "  WhatIf: Would install $Source -> $Destination"
        return $true
    }
    
    $result = New-JunctionOrCopy -LinkPath $Destination -TargetPath $Source -ForceCopy:$ForceCopy
    
    if ($result.Success) {
        if ($result.Method -eq "copy") {
            Write-Warn "$Description -> $($result.Message)"
        } else {
            Write-OK "$Description -> $($result.Message)"
        }
        return $true
    } else {
        Write-NG "$Description -> $($result.Message)"
        return $false
    }
}
#endregion

#region Main
function Main {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "  AI Playbook Installer" -ForegroundColor Cyan
    Write-Host "  Mode: $Mode | Method: $(if($UseCopy){'copy (forced)'}else{'junction (copy fallback)'})" -ForegroundColor Cyan
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
    
    # Verify SSOT
    Write-Step "INSTALL" "Verifying SSOT..."
    if (-not (Test-SSOTExists)) {
        Write-NG "SSOT verification failed."
        exit 1
    }
    Write-OK "SSOT: $script:SSOT_BASE"
    
    $forceCopy = $UseCopy.IsPresent
    $allOk = $true
    
    # Step 1: Build compiled playbook
    Write-Host ""
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
    
    # Step 2: Install Codex Skills (direct junction to SSOT)
    Write-Host ""
    $result = Install-Component `
        -Source $script:SSOT_SKILLS `
        -Destination $script:TARGETS["Codex_Skills"] `
        -Description "Codex Skills" `
        -ForceCopy $forceCopy
    $allOk = $allOk -and $result
    
    # Step 3: Install Claude Skills (direct junction to SSOT)
    $result = Install-Component `
        -Source $script:SSOT_SKILLS `
        -Destination $script:TARGETS["Claude_Skills"] `
        -Description "Claude Skills" `
        -ForceCopy $forceCopy
    $allOk = $allOk -and $result
    
    # Step 4: Install Claude Agents (junction to _compiled)
    Write-Host ""
    $compiledAgents = Get-CompiledAgentsPath -SSOTBase $script:SSOT_BASE
    $result = Install-Component `
        -Source $compiledAgents `
        -Destination $script:TARGETS["Claude_Agents"] `
        -Description "Claude Agents (compiled: $($buildResult.AgentCount) agents)" `
        -ForceCopy $forceCopy
    $allOk = $allOk -and $result
    
    # Step 5: Install Catalog if requested
    if ($Mode -eq "catalog") {
        Write-Host ""
        $catalogDest = Join-Path (Split-Path $script:TARGETS["Claude_Agents"] -Parent) "agents-catalog"
        $result = Install-Component `
            -Source $script:SSOT_AGENTS_CATALOG `
            -Destination $catalogDest `
            -Description "Claude Agents (catalog)" `
            -ForceCopy $forceCopy
        $allOk = $allOk -and $result
    }
    
    # Summary
    Write-Host ""
    if ($allOk) {
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "  Installation Complete!" -ForegroundColor Green
        Write-Host "  Playbook Version: $($buildResult.Version)" -ForegroundColor Green
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
    Write-Host "  - $($script:TARGETS['Claude_Agents']) -> compiled ($($buildResult.AgentCount) agents)"
    if ($Mode -eq "catalog") {
        Write-Host "  - $catalogDest"
    }
    Write-Host ""
    Write-Host "⚠️  Claude agents are READ-ONLY (compiled from SSOT)" -ForegroundColor Yellow
    Write-Host "   Edit source in: $script:SSOT_BASE\subagents\" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Run '.\doctor.ps1 -Mode $Mode' to verify." -ForegroundColor Yellow
    Write-Host ""
    
    exit $(if ($allOk) { 0 } else { 1 })
}

Main
#endregion

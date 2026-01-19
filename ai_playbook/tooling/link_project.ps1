<#
.SYNOPSIS
    Antigravity用プロジェクトリンク作成スクリプト
.DESCRIPTION
    指定されたプロジェクトディレクトリに .agent/skills junction を作成し、
    Antigravity がスキルを検出できる状態にします。
.EXAMPLE
    .\link_project.ps1 -ProjectPath "D:\dev\my_project"
    .\link_project.ps1 -ProjectPath "D:\dev\my_project" -WhatIf
    .\link_project.ps1 -ProjectPath "D:\dev\my_project" -IncludeReadme
    .\link_project.ps1 -ProjectPath "D:\dev\my_project" -UseCopy
#>

[CmdletBinding(SupportsShouldProcess)]
param(
    [Parameter(Mandatory = $true)]
    [string]$ProjectPath,
    
    [switch]$IncludeReadme,
    
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

$script:SSOT_SKILLS = $script:Config.SSOTSkills
$script:REGISTRY_PATH = Join-Path $script:Config.SSOTBase "registry"
#endregion

#region Main
function Main {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "  Antigravity Project Linker" -ForegroundColor Cyan
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
    
    # Validate project path
    if (-not (Test-Path $ProjectPath)) {
        Write-NG "Project path not found: $ProjectPath"
        exit 1
    }
    
    $ProjectPath = (Resolve-Path $ProjectPath).Path
    Write-Step "LINK" "Project: $ProjectPath"
    
    # Create .agent directory
    $agentDir = Join-Path $ProjectPath ".agent"
    if (-not (Test-Path $agentDir)) {
        if ($PSCmdlet.ShouldProcess($agentDir, "Create .agent directory")) {
            New-Item -ItemType Directory -Path $agentDir -Force | Out-Null
            Write-OK "Created .agent/"
        }
    } else {
        Write-OK ".agent/ already exists"
    }
    
    # Create junction/copy: .agent/skills -> SSOT/skills
    $skillsLink = Join-Path $agentDir "skills"
    Write-Step "LINK" "Creating skills link..."
    
    if ($PSCmdlet.ShouldProcess($skillsLink, "Create link to $script:SSOT_SKILLS")) {
        $result = New-JunctionOrCopy -LinkPath $skillsLink -TargetPath $script:SSOT_SKILLS -ForceCopy:$UseCopy
        
        if ($result.Success) {
            if ($result.Method -eq "copy") {
                Write-Warn "skills -> $($result.Message)"
            } else {
                Write-OK "skills -> $script:SSOT_SKILLS"
            }
        } else {
            Write-NG "Failed: $($result.Message)"
            exit 1
        }
    }
    
    # Create README if requested
    if ($IncludeReadme) {
        $readmePath = Join-Path $agentDir "README.md"
        if ($PSCmdlet.ShouldProcess($readmePath, "Create README.md")) {
            $readmeContent = @"
# .agent Directory

このディレクトリは Antigravity 用のスキル・設定を格納します。

## 構造

```
.agent/
├── skills/     ← SSOT へのリンク
└── README.md   ← このファイル
```

## スキル

`skills/` は以下の SSOT にリンクされています:
$script:SSOT_SKILLS

利用可能なスキル:
- phase-planning
- bug-investigation
- code-review
- worklog-update

## 詳細

[START_HERE.md]($script:REGISTRY_PATH\START_HERE.md) を参照してください。
"@
            Set-Content -Path $readmePath -Value $readmeContent -Encoding UTF8
            Write-OK "Created README.md"
        }
    }
    
    # Summary
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "  Project Linked!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Antigravity can now detect skills at:"
    Write-Host "  $skillsLink"
    Write-Host ""
    
    exit 0
}

Main
#endregion

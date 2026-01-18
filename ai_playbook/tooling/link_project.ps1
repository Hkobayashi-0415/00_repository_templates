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
#>

[CmdletBinding(SupportsShouldProcess)]
param(
    [Parameter(Mandatory = $true)]
    [string]$ProjectPath,
    
    [switch]$IncludeReadme
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
$script:SSOT_SKILLS = Join-Path $script:Config.SSOTBase "skills"
$script:REGISTRY_PATH = Join-Path $script:Config.SSOTBase "registry"
#endregion

#region Functions
function Write-Step {
    param([string]$Message)
    Write-Host "[LINK] " -ForegroundColor Cyan -NoNewline
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
            cmd /c rmdir "$Path" 2>$null
        } else {
            Remove-Item -Path $Path -Recurse -Force
        }
    }
}
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
        Write-Failure "Project path not found: $ProjectPath"
        exit 1
    }
    
    $ProjectPath = (Resolve-Path $ProjectPath).Path
    Write-Step "Project: $ProjectPath"
    
    # Create .agent directory
    $agentDir = Join-Path $ProjectPath ".agent"
    if (-not (Test-Path $agentDir)) {
        if ($PSCmdlet.ShouldProcess($agentDir, "Create .agent directory")) {
            New-Item -ItemType Directory -Path $agentDir -Force | Out-Null
            Write-Success "Created .agent/"
        }
    } else {
        Write-Success ".agent/ already exists"
    }
    
    # Create junction: .agent/skills -> SSOT/skills
    $skillsLink = Join-Path $agentDir "skills"
    Write-Step "Creating skills junction..."
    
    if ($PSCmdlet.ShouldProcess($skillsLink, "Create junction to $script:SSOT_SKILLS")) {
        Remove-ExistingLink -Path $skillsLink
        cmd /c mklink /J "$skillsLink" "$script:SSOT_SKILLS" | Out-Null
        
        if (Test-IsJunction $skillsLink) {
            Write-Success "skills -> $script:SSOT_SKILLS"
        } else {
            Write-Failure "Failed to create junction"
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
├── skills/     ← SSOT へのジャンクション
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
            Write-Success "Created README.md"
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

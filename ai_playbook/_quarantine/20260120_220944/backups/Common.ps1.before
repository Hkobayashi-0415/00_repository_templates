<#
.SYNOPSIS
    AI Playbook 共通関数モジュール
.DESCRIPTION
    SSOTパス解決、config読み込み、ユーティリティ関数を提供。
    全スクリプトからドットソースで読み込む。
#>

#region SSOT Path Resolution
function Resolve-SSOTBase {
    <#
    .SYNOPSIS
        SSOTBaseを可搬的に解決する
    .DESCRIPTION
        優先順位:
        1. 環境変数 $env:AI_PLAYBOOK_HOME があればそれを使用
        2. config.psd1 の SSOTBase が "__AUTO__" なら $PSScriptRoot の親（tooling/../）を使用
        3. config.psd1 の SSOTBase が絶対パスならそれを使用
    #>
    param(
        [string]$ConfigSSOTBase,
        [string]$ScriptRoot
    )
    
    # Priority 1: Environment variable
    if ($env:AI_PLAYBOOK_HOME -and (Test-Path $env:AI_PLAYBOOK_HOME)) {
        Write-Verbose "SSOT resolved from env:AI_PLAYBOOK_HOME: $env:AI_PLAYBOOK_HOME"
        return $env:AI_PLAYBOOK_HOME
    }
    
    # Priority 2: __AUTO__ (relative to script location)
    if ($ConfigSSOTBase -eq '__AUTO__') {
        # tooling/ is inside ai_playbook/, so parent is ai_playbook
        $autoResolved = Split-Path $ScriptRoot -Parent
        Write-Verbose "SSOT resolved from __AUTO__: $autoResolved"
        return $autoResolved
    }
    
    # Priority 3: Absolute path from config
    if (Test-Path $ConfigSSOTBase) {
        Write-Verbose "SSOT resolved from config: $ConfigSSOTBase"
        return $ConfigSSOTBase
    }
    
    # Fallback: Try auto-resolution anyway
    $fallback = Split-Path $ScriptRoot -Parent
    if (Test-Path $fallback) {
        Write-Warning "SSOTBase '$ConfigSSOTBase' not found, falling back to: $fallback"
        return $fallback
    }
    
    throw "Cannot resolve SSOT base path. Set env:AI_PLAYBOOK_HOME or fix config.psd1"
}
#endregion

#region Config Loading
function Import-PlaybookConfig {
    <#
    .SYNOPSIS
        config.psd1を読み込み、パスを解決して返す
    #>
    param(
        [string]$ScriptRoot
    )
    
    $configPath = Join-Path $ScriptRoot "config.psd1"
    if (-not (Test-Path $configPath)) {
        throw "config.psd1 not found: $configPath"
    }
    
    $config = Import-PowerShellDataFile -Path $configPath
    
    # Resolve SSOT base
    $ssotBase = Resolve-SSOTBase -ConfigSSOTBase $config.SSOTBase -ScriptRoot $ScriptRoot
    
    # Build paths
    $result = @{
        SSOTBase         = $ssotBase
        SSOTSkills       = Join-Path $ssotBase "skills"
        SSOTAgentsMinimal = Join-Path $ssotBase "subagents\minimal"
        SSOTAgentsExtended = Join-Path $ssotBase "subagents\extended"
        SSOTAgentsCatalog = Join-Path $ssotBase "subagents\catalog"
        ExpectedSkills   = $config.ExpectedSkills
        ExpectedAgentsMinimal = $config.ExpectedAgentsMinimal
        ExpectedAgentsExtended = $config.ExpectedAgentsExtended
        CatalogCategories = $config.CatalogCategories
        Targets          = @{}
    }
    
    # Expand %USERPROFILE% in target paths
    foreach ($key in $config.Targets.Keys) {
        $result.Targets[$key] = $config.Targets[$key] -replace '%USERPROFILE%', $env:USERPROFILE
    }
    
    return $result
}
#endregion

#region Output Helpers
function Write-Step {
    param([string]$Prefix, [string]$Message)
    Write-Host "[$Prefix] " -ForegroundColor Cyan -NoNewline
    Write-Host $Message
}

function Write-OK {
    param([string]$Message)
    Write-Host "[OK] " -ForegroundColor Green -NoNewline
    Write-Host $Message
}

function Write-NG {
    param([string]$Message)
    Write-Host "[NG] " -ForegroundColor Red -NoNewline
    Write-Host $Message
}

function Write-Warn {
    param([string]$Message)
    Write-Host "[WARN] " -ForegroundColor Yellow -NoNewline
    Write-Host $Message
}
#endregion

#region Junction/Copy Helpers
function Test-IsJunction {
    param([string]$Path)
    if (-not (Test-Path $Path)) { return $false }
    $item = Get-Item $Path -Force -ErrorAction SilentlyContinue
    if (-not $item) { return $false }
    return ($item.Attributes -band [System.IO.FileAttributes]::ReparsePoint) -ne 0
}

function Get-JunctionTarget {
    param([string]$Path)
    if (-not (Test-IsJunction $Path)) { return $null }
    try {
        return (Get-Item $Path -Force).Target
    } catch {
        return $null
    }
}

function Remove-ExistingLink {
    param([string]$Path)
    if (-not (Test-Path $Path)) { return }
    
    if (Test-IsJunction $Path) {
        # Remove junction (directory link) - must use cmd rmdir
        cmd /c rmdir "$Path" 2>$null | Out-Null
    } else {
        # Remove regular directory/file
        Remove-Item -Path $Path -Recurse -Force -ErrorAction SilentlyContinue
    }
}

function New-JunctionOrCopy {
    <#
    .SYNOPSIS
        Junction作成を試み、失敗時はcopyにフォールバック
    .OUTPUTS
        @{ Success = $bool; Method = "junction"|"copy"|"failed"; Message = $string }
    #>
    param(
        [string]$LinkPath,
        [string]$TargetPath,
        [switch]$ForceCopy
    )
    
    # Ensure parent directory exists
    $parent = Split-Path $LinkPath -Parent
    if (-not (Test-Path $parent)) {
        New-Item -ItemType Directory -Path $parent -Force | Out-Null
    }
    
    # Remove existing
    Remove-ExistingLink -Path $LinkPath
    
    # If ForceCopy, skip junction attempt
    if ($ForceCopy) {
        try {
            Copy-Item -Path $TargetPath -Destination $LinkPath -Recurse -Force
            return @{ Success = $true; Method = "copy"; Message = "Copied (forced)" }
        } catch {
            return @{ Success = $false; Method = "failed"; Message = "Copy failed: $_" }
        }
    }
    
    # Try junction first
    try {
        $output = cmd /c mklink /J "$LinkPath" "$TargetPath" 2>&1
        if (Test-IsJunction $LinkPath) {
            return @{ Success = $true; Method = "junction"; Message = "Junction created" }
        }
    } catch {
        # Junction failed, try copy
    }
    
    # Fallback to copy
    Write-Warn "Junction failed, falling back to copy (SSOT sync risk!)"
    try {
        Copy-Item -Path $TargetPath -Destination $LinkPath -Recurse -Force
        return @{ 
            Success = $true
            Method = "copy"
            Message = "Copy fallback (WARNING: SSOT may diverge, run update.ps1 to sync)"
        }
    } catch {
        return @{ Success = $false; Method = "failed"; Message = "Both junction and copy failed: $_" }
    }
}
#endregion

#region Content Validation (for copy mode)
function Test-SkillContent {
    <#
    .SYNOPSIS
        スキルディレクトリの中身を検証
    #>
    param(
        [string]$SkillPath,
        [string]$SkillName
    )
    
    $skillMd = Join-Path $SkillPath "SKILL.md"
    if (-not (Test-Path $skillMd)) {
        return @{ OK = $false; Reason = "SKILL.md not found" }
    }
    
    return @{ OK = $true; Reason = "SKILL.md exists" }
}

function Test-AgentContent {
    <#
    .SYNOPSIS
        エージェントファイルの存在を検証
    #>
    param(
        [string]$AgentPath
    )
    
    if (-not (Test-Path $AgentPath)) {
        return @{ OK = $false; Reason = "File not found" }
    }
    
    # Check if it has content (not empty)
    $content = Get-Content $AgentPath -Raw -ErrorAction SilentlyContinue
    if ([string]::IsNullOrWhiteSpace($content)) {
        return @{ OK = $false; Reason = "File is empty" }
    }
    
    return @{ OK = $true; Reason = "File exists with content" }
}
#endregion

#region Compiled Playbook Build
function Get-FileHash256 {
    param([string]$Path)
    if (-not (Test-Path $Path)) { return $null }
    $hash = Get-FileHash -Path $Path -Algorithm SHA256
    return $hash.Hash.ToLower()
}

function Get-PlaybookVersion {
    param([string]$SSOTBase)
    $playbookYaml = Join-Path $SSOTBase "meta\playbook.yaml"
    if (-not (Test-Path $playbookYaml)) {
        return "unknown"
    }
    # Simple YAML parsing for version
    $content = Get-Content $playbookYaml -Raw
    if ($content -match 'version:\s*["\x27]?([0-9]+\.[0-9]+\.[0-9]+)["\x27]?') {
        return $matches[1]
    }
    return "unknown"
}

function Build-CompiledPlaybook {
    <#
    .SYNOPSIS
        SSOTからcompiledディレクトリにエージェントを生成
    .DESCRIPTION
        Mode に応じて minimal/extended/catalog のエージェントを
        _compiled/claude/agents に統合し、build.lock.yaml を生成
    #>
    param(
        [ValidateSet("minimal", "extended", "catalog")]
        [string]$Mode = "minimal",
        
        [string]$SSOTBase
    )
    
    Write-Step "BUILD" "Building compiled playbook (Mode: $Mode)..."
    
    # Paths
    $compiledBase = Join-Path $SSOTBase "_compiled"
    $compiledAgents = Join-Path $compiledBase "claude\agents"
    $lockFile = Join-Path $compiledBase "build.lock.yaml"
    $minimalSource = Join-Path $SSOTBase "subagents\minimal"
    $extendedSource = Join-Path $SSOTBase "subagents\extended"
    $registryYaml = Join-Path $SSOTBase "meta\registry.yaml"
    
    # Clean and recreate compiled directory
    if (Test-Path $compiledAgents) {
        Remove-Item -Path $compiledAgents -Recurse -Force
    }
    New-Item -ItemType Directory -Path $compiledAgents -Force | Out-Null
    
    # Track copied agents for collision detection
    $copiedAgents = @{}
    $agentHashes = @()
    
    # Copy minimal agents
    if (Test-Path $minimalSource) {
        $minimalFiles = Get-ChildItem -Path $minimalSource -Filter "*.md"
        foreach ($file in $minimalFiles) {
            $destPath = Join-Path $compiledAgents $file.Name
            Copy-Item -Path $file.FullName -Destination $destPath -Force
            $copiedAgents[$file.Name] = "minimal"
            $agentHashes += @{
                name = $file.Name
                source = "minimal"
                sha256 = Get-FileHash256 -Path $destPath
            }
        }
        Write-OK "Copied $($minimalFiles.Count) minimal agents"
    }
    
    # Copy extended agents if mode is extended or catalog
    if ($Mode -in @("extended", "catalog")) {
        if (Test-Path $extendedSource) {
            $extendedFiles = Get-ChildItem -Path $extendedSource -Filter "*.md"
            foreach ($file in $extendedFiles) {
                # Check for collision
                if ($copiedAgents.ContainsKey($file.Name)) {
                    Write-NG "Collision detected: $($file.Name) exists in both minimal and extended"
                    throw "Agent file collision: $($file.Name)"
                }
                $destPath = Join-Path $compiledAgents $file.Name
                Copy-Item -Path $file.FullName -Destination $destPath -Force
                $copiedAgents[$file.Name] = "extended"
                $agentHashes += @{
                    name = $file.Name
                    source = "extended"
                    sha256 = Get-FileHash256 -Path $destPath
                }
            }
            Write-OK "Copied $($extendedFiles.Count) extended agents"
        }
    }
    
    # Get playbook version and registry hash
    $playbookVersion = Get-PlaybookVersion -SSOTBase $SSOTBase
    $registryHash = if (Test-Path $registryYaml) { Get-FileHash256 -Path $registryYaml } else { "none" }
    
    # Generate build.lock.yaml
    $lockContent = @"
# AI Playbook Build Lock
# Generated at compile time - DO NOT EDIT

playbook_version: "$playbookVersion"
mode: "$Mode"
registry_hash: "$registryHash"
generated_at: "$(Get-Date -Format 'yyyy-MM-ddTHH:mm:sszzz')"

compiled_agents:
"@
    foreach ($agent in $agentHashes) {
        $lockContent += "`n  - name: `"$($agent.name)`""
        $lockContent += "`n    source: `"$($agent.source)`""
        $lockContent += "`n    sha256: `"$($agent.sha256)`""
    }
    
    Set-Content -Path $lockFile -Value $lockContent -Encoding UTF8
    Write-OK "Generated build.lock.yaml (version: $playbookVersion, agents: $($agentHashes.Count))"
    
    return @{
        Success = $true
        CompiledPath = $compiledAgents
        AgentCount = $agentHashes.Count
        Version = $playbookVersion
    }
}

function Get-CompiledAgentsPath {
    param([string]$SSOTBase)
    return Join-Path $SSOTBase "_compiled\claude\agents"
}

function Get-BuildLockInfo {
    <#
    .SYNOPSIS
        build.lock.yaml を読み込んでパース
    #>
    param([string]$SSOTBase)
    
    $lockFile = Join-Path $SSOTBase "_compiled\build.lock.yaml"
    if (-not (Test-Path $lockFile)) {
        return $null
    }
    
    $content = Get-Content $lockFile -Raw
    $result = @{
        Exists = $true
        Path = $lockFile
    }
    
    # Simple YAML parsing
    if ($content -match 'playbook_version:\s*"([^"]+)"') {
        $result.PlaybookVersion = $matches[1]
    }
    if ($content -match 'mode:\s*"([^"]+)"') {
        $result.Mode = $matches[1]
    }
    if ($content -match 'registry_hash:\s*"([^"]+)"') {
        $result.RegistryHash = $matches[1]
    }
    if ($content -match 'generated_at:\s*"([^"]+)"') {
        $result.GeneratedAt = $matches[1]
    }
    
    return $result
}
#endregion


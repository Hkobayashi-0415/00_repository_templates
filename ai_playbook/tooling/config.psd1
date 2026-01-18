# AI Playbook Configuration
# このファイルでSSOTパスと配布設定を一元管理
# 注意: PSD1ファイルでは変数展開されないため、プレースホルダを使用

@{
    # SSOT（正本）の絶対パス
    # 移動時はここだけ変更
    SSOTBase = 'D:\dev\00_repository_templates\ai_playbook'
    
    # 配布先定義（%USERPROFILE%はスクリプトで置換）
    Targets = @{
        Codex_Skills  = '%USERPROFILE%\.codex\skills'
        Claude_Skills = '%USERPROFILE%\.claude\skills'
        Claude_Agents = '%USERPROFILE%\.claude\agents'
    }
    
    # デフォルト配布モード: junction / copy
    DefaultMode = 'junction'
    
    # Subagentsモード: minimal / catalog
    SubagentsMode = 'minimal'
    
    # 期待されるスキル（doctor用）
    ExpectedSkills = @(
        'phase-planning'
        'bug-investigation'
        'code-review'
        'worklog-update'
    )
    
    # 期待されるエージェント - Minimal（doctor用）
    ExpectedAgentsMinimal = @(
        'planner.md'
        'implementer.md'
        'reviewer.md'
    )
    
    # Catalog カテゴリ（doctor用）
    CatalogCategories = @(
        'bonus'
        'design'
        'engineering'
        'marketing'
        'product'
        'project-management'
        'studio-operations'
        'testing'
    )
    
    # Obsidian ログ設定
    Obsidian = @{
        LogPath = 'D:\Obsidian\Programming'
        NamingPattern = '<PJ>_phase<No>_log_<yymmdd>.md'
    }
}

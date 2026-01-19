# AI Playbook Configuration
# SSOTパスと配布設定を一元管理

@{
    # SSOT（正本）の絶対パス
    # '__AUTO__' を指定すると、スクリプト位置から自動解決
    # 環境変数 $env:AI_PLAYBOOK_HOME があればそれを優先
    SSOTBase = '__AUTO__'
    
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
    
    # 期待されるエージェント - Minimal（背骨の3体）
    ExpectedAgentsMinimal = @(
        'planner.md'
        'implementer.md'
        'reviewer.md'
    )
    
    # 期待されるエージェント - Extended（minimal + 追加2体）
    ExpectedAgentsExtended = @(
        'rapid-prototyper.md'
        'test-writer-fixer.md'
    )
    
    # Catalog カテゴリ（doctor用）
    # catalog モードでは全カテゴリの存在をチェック
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

# Worklog: skills disappearance investigation

- Date: 2026-03-12
- Task: `ai_playbook/skills/` の消失原因を特定し、破壊前状態へ戻す手順を確立する
- Execution-Tool: Codex
- Execution-Agent: codex
- Execution-Model: gpt-5
- Used-Skills: bug-investigation
- Used-Subagents: n/a
- Repo-Refs: ai_playbook/skills, ai_playbook/skills_staging, ai_playbook/registry/SKILLS_INDEX.md, ai_playbook/tooling/doctor.ps1, ai_playbook/tooling/config.psd1, docs/worklog/2026-03-05_00_repository_templates_SkillsImport.md, docs/worklog/manifests/2026-03-05_00_repository_templates_SkillsImport_added_skills.txt, docs/worklog/2026-03-11_skills-index-creation.md
- Obsidian-Refs: n/a
- Tags: [agent/codex, model/gpt-5, tool/codex, investigation, recovery]

## Summary

`ai_playbook/skills/` の消失は Git の checkout / restore / clean ではなく、Git index を更新しない直接のファイルシステム操作で発生していた。
現在の `ai_playbook/skills/` は `.system` だけが残る状態で、`.git/index` 上の tracked path 3,185 件のうち 3,167 件が working tree から欠落している。

一方で、`.git/index` から復元した tracked top-level Skill 918 件はすべて `ai_playbook/skills_staging/` に存在しており、2026-03-05 の import manifest 913 件も staging に 100% 残っている。
このため、破壊前の「追跡済み production Skills」状態は `skills_staging` をソースに再構築できる見込みがある。

## Findings

### 1. 2026-03-05 時点では production に 918 top-level Skill が存在していた

- 根拠:
  - `docs/worklog/2026-03-05_00_repository_templates_SkillsImport.md`
  - `docs/worklog/manifests/2026-03-05_00_repository_templates_SkillsImport_added_skills.txt`
- 記録内容:
  - import 元 top-level: 913
  - import 前 destination top-level: 5
  - import 後 destination top-level: 918
  - doctor 23 checks passed

### 2. 現在の production は `.system` しか存在しない

- 観測:
  - `ai_playbook/skills` 直下 child count: 1
  - 残存ディレクトリ: `.system`
- 補足:
  - `ai_playbook/skills/.gitignore` も欠落している
  - `ai_playbook/skills/.system` の `CreationTime` / `LastWriteTime` は `2026-03-12 13:33:45`

### 3. Git metadata は消失時刻に更新されていない

- 観測:
  - `.git/index` `LastWriteTime`: `2026-03-11 17:01:51`
  - `.git/logs/HEAD` `LastWriteTime`: `2026-03-07 02:18:03`
- 判断:
  - `ai_playbook/skills` 崩壊時刻より前で止まっているため、Git checkout / restore / clean による消失ではない
  - working tree を直接操作した可能性が高い

### 4. tracked top-level 918 件はすべて staging に存在する

- `.git/index` から抽出した `ai_playbook/skills/<top-level>`: 918 件
- `TrackedNotInStaging = 0`
- `skills_staging` の stage-only extra:
  - `old`
  - `skill-registration`
  - `shadcn-ui`
  - `xlsx`

### 5. 2026-03-05 import 実体が staging に移っている可能性が高い

- 例:
  - `ai_playbook/skills_staging/3d-web-experience` `CreationTime = 2026-03-05 23:53:22`
  - `ai_playbook/skills_staging/activecampaign-automation` `CreationTime = 2026-03-05 23:53:23`
  - `ai_playbook/skills_staging/agent-memory-mcp` `CreationTime = 2026-03-05 23:53:23`
  - `ai_playbook/skills_staging/.gitignore` `CreationTime = 2026-03-05 23:54:06`
- これらは 2026-03-05 import worklog の時刻帯と一致しており、同一ボリューム内で production から staging へ移された可能性が高い

### 6. `.system` は staging から production へ再配置された疑いが強い

- `ai_playbook/skills_staging/.system` `CreationTime = 2026-03-12 13:23:30`
- `ai_playbook/skills/.system` `CreationTime = 2026-03-12 13:33:45`
- `skill-creator` / `skill-installer` の `SKILL.md` は production と staging で SHA256 一致
- 判断:
  - tracked Skills の大半が消えた後に `.system` だけが別操作で production 側へ再作成された可能性が高い

## Root Cause

消失原因は、`ai_playbook/skills/` の tracked Skill 群が Git を介さない直接のファイルシステム操作で production から退避・移動され、その後 `.system` だけが production 側に再配置されたこと。

現時点の証拠から断定できるのはここまでであり、以下は未確定:

- 実行主体が人手か別エージェントか
- 実際のコマンドが `Move-Item` / `Copy-Item + Remove-Item` / 別プロセスか

ただし、少なくとも「Git 操作で消えた」わけではなく、「production tracked Skills が staging 側へ実体移動した結果、production が空洞化した」という機構は確定できる。

## Recovery Procedure Draft

### Goal

`ai_playbook/skills/` を、破壊前に存在した「tracked production Skills 918 top-level」状態へ戻す。

### Restore Source

- Primary restore source: `ai_playbook/skills_staging/`
- Restore scope: `.git/index` に存在する tracked top-level Skill 918 件
- Exclude stage-only extras:
  - `old`
  - `skill-registration`
  - `shadcn-ui`
  - `xlsx`

### Safe Restore Steps

```powershell
$repo = 'D:\dev\00_repository_templates'
$prod = Join-Path $repo 'ai_playbook\skills'
$stage = Join-Path $repo 'ai_playbook\skills_staging'
$stamp = Get-Date -Format 'yyyyMMdd_HHmmss'
$backupRoot = Join-Path $repo ('ai_playbook\_recovery_backup\skills_' + $stamp)

# 1. 現状退避
New-Item -ItemType Directory -Path $backupRoot -Force | Out-Null
Get-ChildItem -Path $prod -Force | Copy-Item -Destination $backupRoot -Recurse -Force

# 2. tracked top-level 一覧を .git/index から抽出
$indexText = [Text.Encoding]::ASCII.GetString([IO.File]::ReadAllBytes((Join-Path $repo '.git\index')))
$trackedTop = [regex]::Matches($indexText, 'ai_playbook/skills/[^\x00]+') |
  ForEach-Object Value |
  Sort-Object -Unique |
  ForEach-Object {
    if ($_ -match '^ai_playbook/skills/([^/]+)/') { $Matches[1] }
  } |
  Where-Object { $_ } |
  Sort-Object -Unique

# 3. production を空にする（backup 後）
Get-ChildItem -Path $prod -Force | Remove-Item -Recurse -Force

# 4. tracked top-level だけ staging から production へ復元
foreach ($name in $trackedTop) {
  $src = Join-Path $stage $name
  $dst = Join-Path $prod $name
  if (-not (Test-Path $src)) {
    throw "Missing restore source: $src"
  }
  Copy-Item -Path $src -Destination $dst -Recurse -Force
}

# 5. tracked .gitignore の復元
$srcGitIgnore = Join-Path $stage '.gitignore'
$dstGitIgnore = Join-Path $prod '.gitignore'
if (Test-Path $srcGitIgnore) {
  Copy-Item -Path $srcGitIgnore -Destination $dstGitIgnore -Force
}
```

### Validation Steps

```powershell
$repo = 'D:\dev\00_repository_templates'
$prod = Join-Path $repo 'ai_playbook\skills'
$stage = Join-Path $repo 'ai_playbook\skills_staging'
$manifest = Join-Path $repo 'docs\worklog\manifests\2026-03-05_00_repository_templates_SkillsImport_added_skills.txt'

# 1. top-level 件数
(Get-ChildItem -Path $prod -Directory | Measure-Object).Count

# 2. manifest 913 件が production に存在すること
$missingManifest = @()
Get-Content $manifest | ForEach-Object {
  if (-not (Test-Path (Join-Path $prod $_))) { $missingManifest += $_ }
}
$missingManifest.Count

# 3. tracked path 欠落が 0 になること
$indexText = [Text.Encoding]::ASCII.GetString([IO.File]::ReadAllBytes((Join-Path $repo '.git\index')))
$tracked = [regex]::Matches($indexText, 'ai_playbook/skills/[^\x00]+') | ForEach-Object Value | Sort-Object -Unique
$missingTracked = @()
foreach ($p in $tracked) {
  $full = Join-Path $repo ($p -replace '/', '\')
  if (-not (Test-Path $full)) { $missingTracked += $p }
}
$missingTracked.Count

# 4. doctor
& (Join-Path $repo 'ai_playbook\tooling\doctor.ps1')
```

### Notes

- この復旧は「追跡済み production Skills」の復旧であり、stage-only extra の `skill-registration`、`shadcn-ui`、`xlsx` は含めない
- それらは破壊前 production に存在したことを repo-local 証拠だけでは確定できないため、復旧後に改めて受け入れ判断する
- `old` は staging 内の運用退避先なので復元対象外

## Commands Used

```powershell
Get-ChildItem -Force D:\dev\00_repository_templates\ai_playbook | Format-List Name,FullName,Mode,CreationTime,LastWriteTime
Get-ChildItem -Force D:\dev\00_repository_templates\ai_playbook\skills -Recurse
Get-ChildItem -Force D:\dev\00_repository_templates\ai_playbook\skills_staging
Get-Item D:\dev\00_repository_templates\.git\index | Format-List FullName,CreationTime,LastWriteTime,Length
Get-Item D:\dev\00_repository_templates\.git\HEAD, D:\dev\00_repository_templates\.git\logs\HEAD | Format-List FullName,CreationTime,LastWriteTime,Length
Get-Content D:\dev\00_repository_templates\docs\worklog\2026-03-05_00_repository_templates_SkillsImport.md
Get-Content D:\dev\00_repository_templates\docs\worklog\manifests\2026-03-05_00_repository_templates_SkillsImport_added_skills.txt
Get-Content D:\dev\00_repository_templates\docs\worklog\2026-03-11_skills-index-creation.md
Get-ChildItem -Recurse -Force D:\dev\00_repository_templates -File | Select-String -Pattern 'ai_playbook\\skills|skills_staging'
Get-FileHash D:\dev\00_repository_templates\ai_playbook\skills\.system\skill-creator\SKILL.md -Algorithm SHA256
Get-FileHash D:\dev\00_repository_templates\ai_playbook\skills_staging\.system\skill-creator\SKILL.md -Algorithm SHA256
Get-FileHash D:\dev\00_repository_templates\ai_playbook\skills\.system\skill-installer\SKILL.md -Algorithm SHA256
Get-FileHash D:\dev\00_repository_templates\ai_playbook\skills_staging\.system\skill-installer\SKILL.md -Algorithm SHA256
```

## Tests

- `.git/index` tracked path 数と working tree 実在数の比較
  - tracked: 3185
  - existing: 18
  - missing: 3167
- tracked top-level と staging 照合
  - tracked top-level: 918
  - tracked not in staging: 0
- import manifest と staging 照合
  - manifest present in staging: 913
  - manifest absent in staging: 0
- production / staging の `.system` ハッシュ一致
  - `skill-creator`: PASS
  - `skill-installer`: PASS

## Next Actions

- ユーザー確認後、上記 Recovery Procedure を実行する
- 実行前に backup パスと復旧対象の 918 件一覧を再出力する
- 復旧後に `doctor.ps1` と tracked path 欠落 0 を検証する

---

## Recovery Execution

- Date: 2026-03-12
- Task: `ai_playbook/skills/` を Git で復旧し、staging 差分を production に再統合した
- Execution-Tool: Codex
- Execution-Agent: codex
- Execution-Model: gpt-5
- Used-Skills: bug-investigation
- Used-Subagents: n/a

### Performed

- `tracked / production / staging` の top-level 集合を比較
  - tracked: 918
  - production before restore: 1
  - staging: 922
  - stage-only current: `old`, `shadcn-ui`, `skill-registration`, `xlsx`
- stage-only current 4 件は `ai_playbook/_recovery_backup/stage_only_preserve_20260312/` へ保全
- `.NET ProcessStartInfo` 経由で Git を実行し、`ai_playbook/skills/` を `HEAD` から path 単位で復旧
- 復旧後、staging 差分を production に再統合
  - 上書き統合:
    - `ab-test-setup`
    - `canvas-design`
    - `competitor-alternatives`
    - `design-md`
    - `doc-coauthoring`
    - `free-tool-strategy`
    - `theme-factory`
    - `webapp-testing`
    - `xlsx-official`
  - production へ新規投入:
    - `skill-registration`
    - `shadcn-ui`
- `xlsx` standalone は production へ追加せず、`xlsx-official` 統合方針を維持
- `ai_playbook/registry/SKILLS_INDEX.md` を更新
  - total を `937 skills` に補正
  - `xlsx-official` 行を本文ベース説明へ更新

### Commands

```powershell
# stage-only current の保全
$preserve='D:\dev\00_repository_templates\ai_playbook\_recovery_backup\stage_only_preserve_20260312'

# Git 実行確認
$psi = New-Object System.Diagnostics.ProcessStartInfo
$psi.FileName = 'C:\Program Files\Git\bin\git.exe'
$psi.Arguments = '--version'

# production restore
$psi.Arguments = '-C D:\dev\00_repository_templates restore --source=HEAD --worktree --staged -- ai_playbook/skills'

# staging 差分の production 再統合
$targets=@(
  'ab-test-setup','canvas-design','competitor-alternatives','design-md',
  'doc-coauthoring','free-tool-strategy','theme-factory','webapp-testing',
  'xlsx-official','skill-registration','shadcn-ui'
)
foreach($n in $targets){
  $dst=\"D:\dev\00_repository_templates\ai_playbook\skills\$n\"
  $src=\"D:\dev\00_repository_templates\ai_playbook\skills_staging\$n\"
  if(-not (Test-Path $dst)){
    Copy-Item -Path $src -Destination 'D:\dev\00_repository_templates\ai_playbook\skills' -Recurse -Force
  } else {
    Get-ChildItem $src -Force | Copy-Item -Destination $dst -Recurse -Force
  }
}

# doctor
& 'D:\dev\00_repository_templates\ai_playbook\tooling\doctor.ps1'
```

### Tests

- tracked path 欠落確認
  - result: `MissingTracked=0`
- production unique skill rows と index rows の一致
  - actual unique skill names: `937`
  - index rows: `937`
  - result: PASS
- `SKILLS_INDEX.md` header count
  - result: `937 skills`
- `doctor.ps1`
  - result: 23 checks passed, 0 failed

### Notes

- `ai_playbook/skills/` の top-level は再統合後 `920`
- `SKILL.md` 総数はカテゴリ配下分を含めて `947`
- index はユニーク Skill 名ベースで `937`

### Index Finalization

- `SKILLS_INDEX.md` を production `SKILL.md` 実体に合わせて再生成
- 既存の良い日本語行は保持し、英語寄りの行は `SKILL.md` の見出し・使用場面・前提条件を参照した日本語説明へ再構成
- 最終状態:
  - `Total: 937 skills`
  - index rows: `937`
  - actual unique skills: `937`
  - missing in index: `0`
  - phantom in index: `0`
- `skill-registration`、`shadcn-ui`、`xlsx-official` を含む production 実体と索引の整合を確認

### Index ID / Link Update

- `SKILLS_INDEX.md` の全一覧行に連番 ID を付与
  - 形式: `SK-0001` 〜 `SK-0937`
- 表の列構成を更新
  - `ID / スキル名 / リンク / 用途概要 / 特徴と使用シーン / 備考`
- 各行に対応する `SKILL.md` へのリンクを追加
  - 例: `../skills/bug-investigation/SKILL.md`
  - `.system` 配下は `../skills/.system/.../SKILL.md` を使用
- 埋め込みサンプル `files/skills/.../SKILL.md` はリンク対象から除外

### Verification

- data rows: `937`
- rows missing link: `0`
- `skill-creator` は `.system/skill-creator/SKILL.md` を指すことを確認
- `doctor.ps1`: 23 checks passed, 0 failed

## 2026-03-12 16:10 JST - Skill naming alignment and full index quality restore

### Summary

- `ai_playbook/skills/skill-creator/` を `ai_playbook/skills/skill-creator-cli/` へ rename
- `skill-creator-cli/SKILL.md` の `name:` と見出しを `skill-creator-cli` へ更新
- `skill-creator-cli/README.md` の名称と symlink 例を新名称へ更新
- `SKILLS_INDEX.md` を production `SKILL.md` 実体 `940` 件ベースで全面再生成
- index 未収録だった `.system/slides` と `.system/spreadsheets` を追加
- `ID / スキル名 / リンク / 用途概要 / 特徴と使用シーン / 備考` の 6 列構成を維持したまま、説明文を actual `SKILL.md` 本文レビューに基づいて再構成

### Why

- index と実体の命名に重複があり、`skill-creator` が `.system` と community 版で衝突していた
- `SKILLS_INDEX.md` の説明が一部で英語混じり・定型化し、要求水準を満たしていなかった
- `slides` / `spreadsheets` が production 実体に存在するのに index 未登録だった

### Commands

```powershell
Move-Item -Path 'D:\dev\00_repository_templates\ai_playbook\skills\skill-creator' -Destination 'D:\dev\00_repository_templates\ai_playbook\skills\skill-creator-cli'

Get-ChildItem -Path 'D:\dev\00_repository_templates\ai_playbook\skills' -Recurse -Filter SKILL.md |
  Where-Object { $_.FullName -notmatch '\\files\\skills\\' }

Get-Content -Path 'D:\dev\00_repository_templates\ai_playbook\_recovery_backup\SKILLS_INDEX.before_regen_20260312.md'

& 'D:\dev\00_repository_templates\ai_playbook\tooling\doctor.ps1'
```

### Validation logic

- 実体 `SKILL.md` を全件走査し、frontmatter `name:` / directory 名 / 見出し構造 / source / risk / safety overlay を抽出
- 説明品質が高い既存 index 行は保持
- 劣化していた行は actual `SKILL.md` の見出しと説明からカテゴリ別に再要約
- `skill-creator-cli`、`slides`、`spreadsheets` は手動で用途・特徴・備考を補完

### Tests

- actual unique skill names: `940`
- index rows: `940`
- index unique names: `940`
- directory/name mismatch: `0`
- missing in index: `0`
- phantom in index: `0`
- duplicate names: `0`
- `doctor.ps1`: `23 checks passed, 0 failed`

### Outcomes

- index の canonical name と production directory 名、frontmatter `name:` が一致
- `skill-creator` は `.system` 側のみが canonical 名として残り、community 版は `skill-creator-cli` に分離
- `SKILLS_INDEX.md` は `940 skills` に更新
- 代表確認:
  - `2d-games`: 日本語の設計・実装パターン説明へ改善
  - `3d-web-experience`: 劣化前の具体説明を維持
  - `ab-test-setup`: 実験設計のハードゲート説明を維持
  - `accessibility-compliance-accessibility-audit`: 監査フロー説明を維持
  - `active-directory-attacks`: 認可環境限定の高リスク注意を維持
  - `skill-creator-cli`: rename 後の名称・リンク・説明を反映

### Execution metadata

- Execution-Tool: Codex CLI
- Execution-Agent: Codex
- Execution-Model: GPT-5
- Used-Skills: n/a
- Used-Subagents: none
- Repo-Refs:
  - `ai_playbook/skills/skill-creator-cli/SKILL.md`
  - `ai_playbook/skills/skill-creator-cli/README.md`
  - `ai_playbook/registry/SKILLS_INDEX.md`
  - `ai_playbook/skills/.system/slides/SKILL.md`
  - `ai_playbook/skills/.system/spreadsheets/SKILL.md`
- Obsidian-Refs: none
- Tags: `skills`, `index`, `rename`, `registry`, `quality-restore`

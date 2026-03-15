# Worklog: スキル一覧目次の作成・配置

- Date: 2026-03-11
- Task: ai_playbook/skills/ 全スキルの一覧をSKILLS_INDEX.mdとして生成・配置
- Execution-Tool: Antigravity
- Execution-Agent: Antigravity
- Execution-Model: gemini-2.5-pro
- Used-Skills: n/a
- Used-Subagents: n/a
- Repo-Refs: ai_playbook/skills/, ai_playbook/registry/SKILLS_INDEX.md, docs/worklog/_template.md
- Obsidian-Refs: n/a
- Tags: [agent/antigravity, model/gemini-2.5-pro, tool/antigravity]

## Summary

`ai_playbook/skills/` 配下の全スキル（914個）を走査し、各 `SKILL.md` のfrontmatter（name/description/source/risk）を抽出して `ai_playbook/registry/SKILLS_INDEX.md` として配置した。ユーザー添付画像に基づき4列テーブル形式（スキル名・用途概要・対象・利用ゾーン・備考）で出力。

## Changes

- [NEW] `ai_playbook/registry/SKILLS_INDEX.md`（939行、135KB）
  - コアスキル（内製）4件を先頭に記載
  - 外部スキル910件をアルファベット順で一覧化

## Commands

```bash
python C:\tmp\gen_skills_index.py
# => Scanning 917 dirs...
# => Parsed: 914 skills
# => Done: D:\dev\00_repository_templates\ai_playbook\registry\SKILLS_INDEX.md
# => Lines: 939
```

## Tests

- `Test-Path` で配置確認: OK
- 先頭40行目視確認: コアスキル4件・外部スキルの表形式確認 OK
- frontmatter無し（SKILL.mdなし）のスキル: 3件スキップ（正常）

## Rationale (Key Points)

- PowerShell版はhere-string内の日本語文字列・正規表現でパースエラーが連発したためPython 3.12に切り替え
- description 120文字超は末尾を `...` で切り詰め
- パイプ文字は `&#124;` にエスケープしてMarkdownテーブル崩れを防止
- コアスキル（bug-investigation / code-review / phase-planning / worklog-update）を先頭に分離

## Rollback

```powershell
Remove-Item "D:\dev\00_repository_templates\ai_playbook\registry\SKILLS_INDEX.md"
```

## Record Check
- Execution fields recorded: Yes
- Tags include agent/model/tool: Yes
- Skill/Subagent fields separated: Yes

## Next Actions

- 必要に応じてカテゴリ別の目次セクションを追加
- `gen_skills_index.py` を `ai_playbook/tooling/` に移動して運用スクリプト化（必要であれば）

---

# Worklog: SKILLS_INDEX 手分析抜粋10件の作成

- Date: 2026-03-11
- Task: `ai_playbook/registry/SKILLS_INDEX.md` に手分析ベースの10件抜粋を追加
- Execution-Tool: Codex CLI
- Execution-Agent: Codex
- Execution-Model: GPT-5
- Used-Skills: phase-planning, worklog-update
- Used-Subagents: n/a
- Repo-Refs: ai_playbook/registry/SKILLS_INDEX.md, docs/worklog/2026-03-11_skills-index-creation.md, ai_playbook/skills/3d-web-experience/SKILL.md, ai_playbook/skills/ab-test-setup/SKILL.md, ai_playbook/skills/accessibility-compliance-accessibility-audit/SKILL.md, ai_playbook/skills/active-directory-attacks/SKILL.md, ai_playbook/skills/activecampaign-automation/SKILL.md, ai_playbook/skills/address-github-comments/SKILL.md, ai_playbook/skills/agent-evaluation/SKILL.md, ai_playbook/skills/agent-framework-azure-ai-py/SKILL.md, ai_playbook/skills/agent-manager-skill/SKILL.md, ai_playbook/skills/agent-memory-mcp/SKILL.md
- Obsidian-Refs: n/a
- Tags: [agent/codex, model/gpt-5, tool/codex-cli]

## Summary

自動生成索引が `SKILL.md` 本文の内容差を表現できていなかったため、先頭10件を対象に本文読解ベースの抜粋セクションを追加した。各行は frontmatter の description 転記ではなく、用途、使いどころ、前提条件、制約、注意点を `SKILL.md` 本文から要約して記述した。

## Changes

- [UPDATE] `ai_playbook/registry/SKILLS_INDEX.md`
  - `## 手分析抜粋（10件）` セクションを追加
  - `スキル名 / 用途概要 / 特徴と使用シーン / 備考` の4列で10件を記述
  - 対象: `3d-web-experience` から `agent-memory-mcp` までの10件
- [UPDATE] `docs/worklog/2026-03-11_skills-index-creation.md`
  - 今回の手分析作業を追記

## Commands

```powershell
Get-Content D:\dev\00_repository_templates\ai_playbook\registry\SKILLS_INDEX.md -TotalCount 80
Get-Content D:\dev\00_repository_templates\docs\worklog\2026-03-11_skills-index-creation.md -TotalCount 200
Get-Content D:\dev\00_repository_templates\ai_playbook\skills\phase-planning\SKILL.md -TotalCount 200
Get-Content D:\dev\00_repository_templates\ai_playbook\skills\3d-web-experience\SKILL.md -TotalCount 220
Get-Content D:\dev\00_repository_templates\ai_playbook\skills\ab-test-setup\SKILL.md -TotalCount 220
Get-Content D:\dev\00_repository_templates\ai_playbook\skills\accessibility-compliance-accessibility-audit\SKILL.md -TotalCount 220
Get-Content D:\dev\00_repository_templates\ai_playbook\skills\active-directory-attacks\SKILL.md -TotalCount 220
Get-Content D:\dev\00_repository_templates\ai_playbook\skills\activecampaign-automation\SKILL.md -TotalCount 220
Get-Content D:\dev\00_repository_templates\ai_playbook\skills\address-github-comments\SKILL.md -TotalCount 220
Get-Content D:\dev\00_repository_templates\ai_playbook\skills\agent-evaluation\SKILL.md -TotalCount 240
Get-Content D:\dev\00_repository_templates\ai_playbook\skills\agent-framework-azure-ai-py\SKILL.md -TotalCount 240
Get-Content D:\dev\00_repository_templates\ai_playbook\skills\agent-manager-skill\SKILL.md -TotalCount 240
Get-Content D:\dev\00_repository_templates\ai_playbook\skills\agent-memory-mcp\SKILL.md -TotalCount 240
Select-String -Path D:\dev\00_repository_templates\ai_playbook\registry\SKILLS_INDEX.md -Pattern '^## 手分析抜粋（10件）$','^\| `3d-web-experience`','^\| `agent-memory-mcp`'
```

## Tests

- `Get-Content ... -TotalCount 40` で追加セクションの表構造を確認: OK
- `Select-String` で見出しと先頭・末尾行の存在を確認: OK
- `git diff` による差分確認を試行したが、この環境では `git` コマンド未導入のため未実施

## Rationale (Key Points)

- 既存索引は frontmatter の `description` と `source/risk` を転記しただけで、ユーザーが求める「各スキルの個別分析」になっていなかった
- まず10件の抜粋を先頭に追加し、品質基準をユーザー確認できる形にした
- 危険性の高い `active-directory-attacks` は内容の実態を踏まえつつ、索引では認可済み環境での検証用途として注意書きを付与した

## Rollback

```powershell
# 「手分析抜粋（10件）」セクションのみを削除して元の自動生成一覧に戻す
```

## Next Actions

- ユーザー確認後、同じ基準で全件を順次手分析形式へ展開する
- 全件化する場合は自動生成欄の置換方針（全面差し替え or 手分析セクションの拡張）を決める

---

# Worklog: SKILLS_INDEX 全件再構成

- Date: 2026-03-11
- Task: `ai_playbook/registry/SKILLS_INDEX.md` を全 936 件対象の本文参照型索引へ再構成
- Execution-Tool: Codex CLI
- Execution-Agent: Codex
- Execution-Model: GPT-5
- Used-Skills: phase-planning, worklog-update
- Used-Subagents: n/a
- Repo-Refs: ai_playbook/registry/SKILLS_INDEX.md, docs/worklog/2026-03-11_skills-index-creation.md, ai_playbook/skills/, ai_playbook/skills/.system/skill-creator/SKILL.md, ai_playbook/skills/.system/skill-installer/SKILL.md
- Obsidian-Refs: n/a
- Tags: [agent/codex, model/gpt-5, tool/codex-cli]

## Summary

`SKILLS_INDEX.md` を frontmatter 転記型の一覧から、各 `SKILL.md` 本文の節構造を参照した索引へ全面更新した。Purpose / Overview / Use this skill when / Capabilities / Prerequisites / Notes / Known Pitfalls / Sharp Edges / `###` 見出しを抽出し、`用途概要 / 特徴と使用シーン / 備考` を組み立てた。先頭10件と内製・システムスキルは手修正版を優先適用した。

## Changes

- [UPDATE] `ai_playbook/registry/SKILLS_INDEX.md`
  - 総件数を 936 件で再生成
  - セクションを `コアスキル（内製） / システムスキル / スキル一覧` に再編成
  - 4列表記を `スキル名 / 用途概要 / 特徴と使用シーン / 備考` に統一
  - 先頭10件、内製4件、システム2件は手修正優先
- [UPDATE] `docs/worklog/2026-03-11_skills-index-creation.md`
  - 全件再構成の作業履歴を追記

## Commands

```powershell
Get-ChildItem D:\dev\00_repository_templates\ai_playbook\skills -Recurse -Filter SKILL.md | Measure-Object
Get-Content D:\dev\00_repository_templates\ai_playbook\registry\SKILLS_INDEX.md -TotalCount 45
Select-String D:\dev\00_repository_templates\ai_playbook\registry\SKILLS_INDEX.md -Pattern '^\\| `ab-test-setup`','^\\| `activecampaign-automation`','^\\| `analytics-tracking`','^\\| `agent-framework-azure-ai-py`','^\\| `bug-investigation`'
Test-Path D:\dev\00_repository_templates\docs\worklog\_tmp_generate_skills_index.ps1
```
```
内部処理:
- `SKILL.md` frontmatter と本文節の抽出
- PowerShell による索引再生成
- 一時生成スクリプト削除
```

## Tests

- `Get-Content ... -TotalCount 45` でヘッダ、目次、コアスキル、システムスキルの構造を確認: OK
- `Select-String` で `bug-investigation`、`ab-test-setup`、`activecampaign-automation`、`agent-framework-azure-ai-py`、`analytics-tracking` の行を確認: OK
- 総行数確認: 969 行
- 一時生成スクリプト削除確認: `Test-Path` = `False`
- `git diff` はこの環境で `git` コマンド未導入のため未実施

## Rationale (Key Points)

- 全 936 件を完全手作業で書き換えるのではなく、各 `SKILL.md` の節構造を読んで要点を再構成する方式にした
- ユーザー確認済みの10件は手修正版を固定し、品質基準の基準点として残した
- offensive security 系スキルは索引上で認可済み環境限定の注意書きを優先した
- frontmatter のみでは不十分なスキルは `###` 見出しや前提・注意節から使用シーンと備考を補った

## Rollback

```powershell
# 2026-03-11 時点の SKILLS_INDEX.md 直前版へ手動復元
# 必要なら本 worklog の「手分析抜粋10件」段階の内容を基準に戻す
```

## Next Actions

- ユーザーが不自然と感じるカテゴリやスキル群があれば、その範囲を追加で手修正する
- 特に Azure / security / automation 系のように件数が多い群は、必要に応じてカテゴリ別に表現を磨く

---

# Worklog: skill-registration の追加

- Date: 2026-03-11
- Task: 新規 Skill 登録専用の `skill-registration` を追加し、staging 運用と必須使用ルールを設定
- Execution-Tool: Codex CLI
- Execution-Agent: Codex
- Execution-Model: GPT-5
- Used-Skills: skill-creator, phase-planning, worklog-update
- Used-Subagents: n/a
- Repo-Refs: AGENTS.md, ai_playbook/skills/skill-registration/SKILL.md, ai_playbook/skills_staging/.gitkeep, ai_playbook/registry/SKILLS_INDEX.md, docs/worklog/2026-03-11_skills-index-creation.md
- Obsidian-Refs: n/a
- Tags: [agent/codex, model/gpt-5, tool/codex-cli]

## Summary

新規 Skill を追加するときの受け入れフローを `skill-registration` として Skill 化した。候補 Skill は `ai_playbook/skills_staging/` に仮置きし、レビュー、脅威判定、安全対策、重複確認、`SKILLS_INDEX.md` 反映を経てから `ai_playbook/skills/` に本番格納する運用に変更した。

## Changes

- [ADD] `ai_playbook/skills/skill-registration/SKILL.md`
  - 新規 Skill 登録専用 Skill を追加
  - staging → レビュー → 脅威判定 → 安全化 → 重複判定 → 索引更新 → 本番格納 の流れを定義
- [ADD] `ai_playbook/skills_staging/.gitkeep`
  - 本番前置き場ディレクトリを追加
- [UPDATE] `AGENTS.md`
  - 新規 Skill 登録時は `skill-registration` を必須使用に変更
  - staging を経由するルールを追加
- [UPDATE] `ai_playbook/registry/SKILLS_INDEX.md`
  - 総件数を 937 件へ更新
  - `skill-registration` の索引行を追加
- [UPDATE] `docs/worklog/2026-03-11_skills-index-creation.md`
  - 今回の変更履歴を追記

## Commands

```powershell
Get-Content D:\dev\00_repository_templates\ai_playbook\skills\.system\skill-creator\SKILL.md -TotalCount 260
Get-Content D:\dev\00_repository_templates\ai_playbook\skills\writing-skills\SKILL.md -TotalCount 260
Get-ChildItem D:\dev\00_repository_templates\ai_playbook\skills -Directory | Where-Object { $_.Name -like 'skill-*' }
Get-Content D:\dev\00_repository_templates\AGENTS.md -TotalCount 260
```

## Tests

- 新規 Skill の frontmatter と本文構成を既存 Skill 形式に合わせて作成
- `AGENTS.md` に必須使用ルールと staging 運用が反映されていることを確認
- `SKILLS_INDEX.md` に `skill-registration` が追加され、総件数が 937 に更新されていることを確認

## Rationale (Key Points)

- 新規 Skill 追加時のばらつきを防ぐため、運用ルールではなく Skill として実行手順を固定した
- レビュー前に本番配置しないよう、専用 staging パスを明示した
- 今回実施した索引更新方式を、新規登録フローの必須ステップとして組み込んだ

## Rollback

```powershell
Remove-Item D:\dev\00_repository_templates\ai_playbook\skills\skill-registration -Recurse
Remove-Item D:\dev\00_repository_templates\ai_playbook\skills_staging -Recurse
```

## Next Actions

- 脅威判定の詳細基準を後続で定義する
- 必要なら `skill-registration` から参照する審査チェックリストを `references/` として分離する

---

# Worklog: skill-registration の Register in Index 具体化

- Date: 2026-03-11
- Task: `skill-registration` の `Register in Index` を今回の索引更新手順に沿って具体化
- Execution-Tool: Codex CLI
- Execution-Agent: Codex
- Execution-Model: GPT-5
- Used-Skills: skill-creator, worklog-update
- Used-Subagents: n/a
- Repo-Refs: ai_playbook/skills/skill-registration/SKILL.md, ai_playbook/registry/SKILLS_INDEX.md, docs/worklog/2026-03-11_skills-index-creation.md
- Obsidian-Refs: n/a
- Tags: [agent/codex, model/gpt-5, tool/codex-cli]

## Summary

`skill-registration` の `Register in Index` 節を、抽象説明から具体的な実務手順へ更新した。`SKILLS_INDEX.md` の列構成確認、セクション選定、本文節からの要約方法、件数更新、確認ポイントまで明記した。

## Changes

- [UPDATE] `ai_playbook/skills/skill-registration/SKILL.md`
  - `Register in Index` を具体手順へ書き換え
- [UPDATE] `docs/worklog/2026-03-11_skills-index-creation.md`
  - 今回の変更履歴を追記

## Tests

- `Register in Index` に以下が含まれることを確認
  - `SKILLS_INDEX.md` の構成確認
  - 列ごとの記述基準
  - 総件数更新
  - 追加後の確認観点

## Rationale (Key Points)

- 「索引へ追加する」だけでは運用差が出るため、今回の実作業をそのまま手順化した
- 新規 Skill 追加時に frontmatter 転記へ戻ることを防ぐため、本文節ベースで書く基準を明示した

---

# Worklog: skill-registration 実運用テスト（2026-03-12）

- Date: 2026-03-12
- Task: `skills_staging` の 5 件を使って `skill-registration` の受け入れフローを実地確認
- Execution-Tool: Codex CLI
- Execution-Agent: Codex
- Execution-Model: GPT-5
- Used-Skills: skill-registration, worklog-update
- Used-Subagents: n/a
- Repo-Refs: ai_playbook/skills_staging/, ai_playbook/skills/shadcn-ui/SKILL.md, ai_playbook/registry/SKILLS_INDEX.md, docs/worklog/2026-03-11_skills-index-creation.md
- Obsidian-Refs: n/a
- Tags: [agent/codex, model/gpt-5, tool/codex-cli]

## Summary

`skills_staging` に置かれた 5 件をレビューした結果、`canvas-design`、`design-md`、`doc-coauthoring`、`theme-factory` は既存本番 Skill と同名のため新規登録ではなく重複扱いとした。`shadcn-ui` は新規候補として採用し、Bash/インストール系操作をユーザー承認必須に限定する安全化を加えた上で本番配置と索引追加を行った。

## Review Result

- `canvas-design`: 既存本番 Skill と同名。統廃合対象、昇格せず
- `design-md`: 既存本番 Skill と同名。統廃合対象、昇格せず
- `doc-coauthoring`: 既存本番 Skill と同名。統廃合対象、昇格せず
- `theme-factory`: 既存本番 Skill と同名。統廃合対象、昇格せず
- `shadcn-ui`: 新規候補。staging `audit.json` では shell-exec 高リスク指摘あり。承認必須ルールを明示したローカル版に整形して昇格

## Changes

- [ADD] `ai_playbook/skills/shadcn-ui/SKILL.md`
  - ローカルポリシーに合わせて安全化した本番版 Skill を追加
- [UPDATE] `ai_playbook/registry/SKILLS_INDEX.md`
  - 総件数を 938 件へ更新
  - `shadcn-ui` の索引行を追加
- [UPDATE] `docs/worklog/2026-03-11_skills-index-creation.md`
  - 実運用テスト結果を追記

## Tests

- `skills_staging` の 5 ディレクトリと 5 件の `SKILL.md` を確認
- 既存本番側に同名 Skill があるか確認
- `shadcn-ui` の staging audit で high 指摘内容を確認
- `SKILLS_INDEX.md` の総件数更新と `shadcn-ui` 行追加を確認

## Rationale (Key Points)

- テスト目的は「5件すべてを昇格すること」ではなく、「受け入れフローが正しく振り分けできること」の確認
- 重複検知で昇格停止できること、危険性のある候補を安全化してから昇格できることの両方を確認した

---

# Worklog: skill-registration 重複差分レビュー再テスト（2026-03-12）

- Date: 2026-03-12
- Task: `skills_staging` 再投入分を対象に、重複判定に加えて本番 Skill との差分説明まで実施
- Execution-Tool: Codex CLI
- Execution-Agent: Codex
- Execution-Model: GPT-5
- Used-Skills: skill-registration, code-review, worklog-update
- Used-Subagents: n/a
- Repo-Refs: ai_playbook/skills/skill-registration/SKILL.md, ai_playbook/skills_staging/, ai_playbook/skills/, docs/worklog/2026-03-11_skills-index-creation.md
- Obsidian-Refs: n/a
- Tags: [agent/codex, model/gpt-5, tool/codex-cli]

## Summary

`skills_staging` の候補は 10 件に増えていた。完全一致の名前で見ると `xlsx` 以外の 9 件は既存本番 Skill と重複していたため、新規追加ではなく比較レビューへ切り替えた。`xlsx` は新規名だが、`xlsx-official` と用途が近く、近縁候補として統廃合判断が必要な状態だった。

## Review Result

- `ab-test-setup`: 重複。staging はマーケ/実験運用向けの広い解説型、本番は仮説固定や実行前ゲートを明示した厳格版
- `canvas-design`: 重複。差分は主に Local Safety Overlay 追加と `When to Use` 節の有無
- `competitor-alternatives`: 重複。staging は簡略版、本番は index page・template・yaml profile まで含む詳細版
- `design-md`: 重複。差分は主に Local Safety Overlay 追加と `When to Use This Skill` 節の有無
- `doc-coauthoring`: 重複。差分は主に Local Safety Overlay 追加と `When to Use` 節の有無
- `free-tool-strategy`: 重複。staging は要約版、本番は tool type、promotion、measurement、scorecard まで含む詳細版
- `shadcn-ui`: 重複。staging は一般的な upstream 解説、本番は repo ローカル向けの安全化版で install 承認ルールあり
- `theme-factory`: 重複。差分は主に Local Safety Overlay 追加と `When to Use` 節の有無
- `webapp-testing`: 重複。差分は主に Local Safety Overlay 追加と `When to Use` 節の有無
- `xlsx`: 新規名。ただし `xlsx-official` と用途が近く、差分は Local Safety Overlay、`Professional Font` 追加、`When to Use` 節名程度で、近縁 Skill として統廃合要検討

## Changes

- [UPDATE] `ai_playbook/skills/skill-registration/SKILL.md`
  - 重複時は差分要約を必ず返すこと、近縁 Skill も比較対象に含めることを追記
- [UPDATE] `docs/worklog/2026-03-11_skills-index-creation.md`
  - 再テスト結果を追記

## Tests

- `skills_staging` 配下の 10 ディレクトリ名を列挙
- 各 staging `SKILL.md` の存在を確認
- 本番 `ai_playbook/skills/` と同名ディレクトリ有無を全件照合
- 重複 9 件について staging / 本番 `SKILL.md` の行数、description、見出し差分を比較
- `xlsx` については `xlsx-official` を近縁候補として比較
- `skill-registration` の重複手順に差分報告ルールを追記したことを確認

## Rationale (Key Points)

- 重複時に「同名です」で止めるだけでは統合判断に必要な情報が不足する
- 完全一致名だけでなく、`xlsx` と `xlsx-official` のような近縁 Skill も実務上は重複候補として扱う必要がある
- 今回の差分整理を手順へ反映したため、以後の新規登録テストでも同じ基準を再利用できる

---

# Worklog: 重複差分取り込みと xlsx 本番追加（2026-03-12）

- Date: 2026-03-12
- Task: staging の重複差分を本番 Skill に取り込み、`xlsx` を新規 Skill として本番登録
- Execution-Tool: Codex CLI
- Execution-Agent: Codex
- Execution-Model: GPT-5
- Used-Skills: skill-registration, code-review, worklog-update
- Used-Subagents: n/a
- Repo-Refs: ai_playbook/skills/ab-test-setup/SKILL.md, ai_playbook/skills/canvas-design/SKILL.md, ai_playbook/skills/competitor-alternatives/SKILL.md, ai_playbook/skills/design-md/SKILL.md, ai_playbook/skills/doc-coauthoring/SKILL.md, ai_playbook/skills/free-tool-strategy/SKILL.md, ai_playbook/skills/theme-factory/SKILL.md, ai_playbook/skills/webapp-testing/SKILL.md, ai_playbook/skills/xlsx/SKILL.md, ai_playbook/registry/SKILLS_INDEX.md, docs/worklog/2026-03-11_skills-index-creation.md
- Obsidian-Refs: n/a
- Tags: [agent/codex, model/gpt-5, tool/codex-cli]

## Summary

重複候補のうち、本番版に未反映だった差分を本番の方針を崩さない範囲で取り込んだ。軽微差分が中心だった `canvas-design`、`competitor-alternatives`、`design-md`、`doc-coauthoring`、`free-tool-strategy`、`theme-factory`、`webapp-testing` には `Local Safety Overlay` を追加し、`ab-test-setup` には overlay に加えて初期確認観点を追加した。`xlsx` は `xlsx-official` の近縁 Skill としてではなく、スプレッドシート成果物特化の別 Skill として新規追加し、索引へ登録した。

## Changes

- [UPDATE] `ai_playbook/skills/ab-test-setup/SKILL.md`
  - `Local Safety Overlay` を追加
  - `Initial Assessment` を追加して baseline / traffic / decision impact の確認を明文化
- [UPDATE] `ai_playbook/skills/canvas-design/SKILL.md`
  - `Local Safety Overlay` を追加
- [UPDATE] `ai_playbook/skills/competitor-alternatives/SKILL.md`
  - `Local Safety Overlay` を追加
- [UPDATE] `ai_playbook/skills/design-md/SKILL.md`
  - `Local Safety Overlay` を追加
- [UPDATE] `ai_playbook/skills/doc-coauthoring/SKILL.md`
  - `Local Safety Overlay` を追加
- [UPDATE] `ai_playbook/skills/free-tool-strategy/SKILL.md`
  - `Local Safety Overlay` を追加
- [UPDATE] `ai_playbook/skills/theme-factory/SKILL.md`
  - `Local Safety Overlay` を追加
- [UPDATE] `ai_playbook/skills/webapp-testing/SKILL.md`
  - `Local Safety Overlay` を追加
- [ADD] `ai_playbook/skills/xlsx/SKILL.md`
  - スプレッドシート成果物向けの新規 Skill を追加
- [UPDATE] `ai_playbook/registry/SKILLS_INDEX.md`
  - 総件数を 939 件へ更新
  - `xlsx` の索引行を追加
- [UPDATE] `docs/worklog/2026-03-11_skills-index-creation.md`
  - 今回の取り込み結果を追記

## Tests

- 更新した各 Skill に `Local Safety Overlay` が追加されたことを確認
- `ab-test-setup` に `Initial Assessment` が追加されたことを確認
- `ai_playbook/skills/xlsx/SKILL.md` の作成と主要見出しを確認
- `SKILLS_INDEX.md` の総件数 939 と `xlsx` 行追加を確認

## Rationale (Key Points)

- staging 差分の多くは本番版の不足というより repo ローカル安全化未反映だったため、overlay 取り込みを優先した
- `ab-test-setup` は本番版の厳格さを維持したまま、staging 側の実務的な初期確認観点を追加した
- `xlsx` は `xlsx-official` と近いが、成果物がスプレッドシートであることを強くトリガー条件にした別名 Skill として扱う価値がある

---

# Worklog: xlsx を xlsx-official へ統合修正（2026-03-12）

- Date: 2026-03-12
- Task: 独立追加した `xlsx` を取り下げ、差分を `xlsx-official` へ統合
- Execution-Tool: Codex CLI
- Execution-Agent: Codex
- Execution-Model: GPT-5
- Used-Skills: skill-registration, code-review, worklog-update
- Used-Subagents: n/a
- Repo-Refs: ai_playbook/skills/xlsx-official/SKILL.md, ai_playbook/skills/xlsx/SKILL.md, ai_playbook/registry/SKILLS_INDEX.md, docs/worklog/2026-03-11_skills-index-creation.md
- Obsidian-Refs: n/a
- Tags: [agent/codex, model/gpt-5, tool/codex-cli]

## Summary

`xlsx` を独立 Skill として残す判断を取り消し、`xlsx-official` へ統合した。`xlsx-official` には `Local Safety Overlay` と `Professional Font` を取り込み、独立追加した `ai_playbook/skills/xlsx/SKILL.md` は削除した。索引は `xlsx` 行を削除し、総件数を 938 件へ戻した。

## Changes

- [UPDATE] `ai_playbook/skills/xlsx-official/SKILL.md`
  - `Local Safety Overlay` を追加
  - `Professional Font` を追加
- [DELETE] `ai_playbook/skills/xlsx/SKILL.md`
  - 独立 Skill を廃止
- [UPDATE] `ai_playbook/registry/SKILLS_INDEX.md`
  - 総件数を 938 件へ補正
  - `xlsx` の索引行を削除
- [UPDATE] `docs/worklog/2026-03-11_skills-index-creation.md`
  - 統合修正を追記

## Tests

- `xlsx-official` に `Local Safety Overlay` と `Professional Font` が存在することを確認
- `ai_playbook/skills/xlsx/SKILL.md` が削除されていることを確認
- `SKILLS_INDEX.md` の総件数が 938 であることを確認
- `xlsx` の索引行が消えていることを確認

## Rationale (Key Points)

- `xlsx` と `xlsx-official` は用途分離より統合の方が運用コストが低い
- 独立 Skill にする必要があった差分は `xlsx-official` に安全に吸収できた

---

# Worklog: skills_staging の反映済み Skill を old へ整理（2026-03-12）

- Date: 2026-03-12
- Task: `skills_staging` に残っていた反映済み Skill を `old` へ移動し、未処理対象だけを残す
- Execution-Tool: Codex CLI
- Execution-Agent: Codex
- Execution-Model: GPT-5
- Used-Skills: skill-registration, code-review, worklog-update
- Used-Subagents: n/a
- Repo-Refs: ai_playbook/skills_staging/, ai_playbook/registry/SKILLS_INDEX.md, docs/worklog/2026-03-11_skills-index-creation.md
- Obsidian-Refs: n/a
- Tags: [agent/codex, model/gpt-5, tool/codex-cli]

## Summary

`skills_staging` を `SKILLS_INDEX.md` 基準で照合したところ、トップレベル 921 件のうち 916 件は索引登録済みで、未索引は `.system`、`libreoffice`、`security`、`SPDD`、`xlsx` だった。`.system`、`libreoffice`、`security` は配下 Skill が既に反映済み、`xlsx` は `xlsx-official` 統合で処理済みのため、`SPDD` を除く 920 件を `ai_playbook/skills_staging/old/` へ移動した。staging 直下には未処理の `SPDD` と `old` のみが残る状態に整理した。

## Changes

- [MOVE] `ai_playbook/skills_staging/` 配下の反映済み 920 ディレクトリ
  - `ai_playbook/skills_staging/old/` へ移動
- [KEEP] `ai_playbook/skills_staging/SPDD`
  - Skill ではないため staging に残置
- [UPDATE] `docs/worklog/2026-03-11_skills-index-creation.md`
  - 整理作業の履歴を追記

## Tests

- `skills_staging` 直下が `old` と `SPDD` のみであることを確認
- `skills_staging/old/` 配下のディレクトリ数が 920 であることを確認
- `skills_staging/old/xlsx` が存在することを確認
- `skills_staging/SPDD` が残っていることを確認

## Rationale (Key Points)

- 既反映 Skill を staging に残したままだと、次回以降の反映作業で毎回同じ重複判定が発生する
- `SKILLS_INDEX.md` を反映完了の基準にし、索引済みの候補を `old` へ移すことで未処理対象を明確化した
- `SPDD` は Skill ディレクトリではないため、自動で old へ送らず残した

---

# Worklog: old 退避の誤処理を復元（2026-03-12）

- Date: 2026-03-12
- Task: 誤って `skills_staging/old/` へ移した候補を `skills_staging/` へ復元し、再判定の前提を戻す
- Execution-Tool: Codex CLI
- Execution-Agent: Codex
- Execution-Model: GPT-5
- Used-Skills: skill-registration, code-review, worklog-update
- Used-Subagents: n/a
- Repo-Refs: ai_playbook/skills_staging/, ai_playbook/skills/, ai_playbook/registry/SKILLS_INDEX.md, docs/worklog/2026-03-11_skills-index-creation.md
- Obsidian-Refs: n/a
- Tags: [agent/codex, model/gpt-5, tool/codex-cli]

## Summary

`skills_staging/old/` へ退避した 920 件を `skills_staging/` へ戻し、退避操作を取り消した。復元後に確認したところ、`ai_playbook/skills/` 配下には `.system` の 2 Skill しか存在せず、`skills_staging` にある 900 件超の候補と照合できる本番正本が存在しない状態だった。したがって、重複・近縁の内容照合は「本番 Skill 実体との比較」ではなく、別の基準を明示して進める必要がある。

## Changes

- [MOVE] `ai_playbook/skills_staging/old/` 配下 920 件
  - `ai_playbook/skills_staging/` へ復元
- [UPDATE] `docs/worklog/2026-03-11_skills-index-creation.md`
  - 誤処理の復元記録を追記

## Tests

- `skills_staging` 直下のディレクトリ数が 922 であることを確認
- `skills_staging/old/` が空であることを確認
- `ai_playbook/skills/` 配下の `SKILL.md` が `.system` の 2 件のみであることを確認

## Rationale (Key Points)

- 誤って `old` へ退避した状態では、内容照合前に候補を処理済み扱いしてしまう
- 復元後に「比較先の正本が実在しない」ことが判明したため、まず前提の是正記録を残した

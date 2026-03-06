# Worklog: skills_subagents_dual_operation

- Date: 2026-03-05
- Task: Skills と Subagents の同時利用ルールを整備し、記録項目を分離
- Execution-Tool: Codex
- Execution-Agent: codex
- Execution-Model: gpt-5
- Used-Skills: phase-planning, worklog-update
- Used-Subagents: n/a
- Repo-Refs: AGENTS.md, docs/worklog/_template.md, docs/worklog/README.md
- Obsidian-Refs: n/a
- Tags: [agent/codex, model/gpt-5, tool/codex]

## Summary

`Used-Skills` と `Used-Subagents` の分離ルールを追加し、Skills/Subagents の同時利用を公式運用として明文化した。

## Changes

- `AGENTS.md`
  - `Skill選定ガイド` を追加
  - `Subagents と Skills の記録ルール` を追加
  - Work history の必須記録項目に `Used-Subagents` を追加
- `docs/worklog/_template.md`
  - `Used-Skills` の注記（公式Skill、Subagent名禁止、`n/a`条件）を追加
  - `Used-Subagents` フィールドを追加
  - Record Check に `Skill/Subagent fields separated` を追加
- `docs/worklog/README.md`
  - `Used-Skills` / `Used-Subagents` 分離記録ルールを追加

## Commands

```powershell
Get-Content -Path 'D:\dev\00_repository_templates\AGENTS.md' -TotalCount 320
Get-Content -Path 'D:\dev\00_repository_templates\docs\worklog\_template.md' -TotalCount 220
Get-Content -Path 'D:\dev\00_repository_templates\docs\worklog\README.md' -TotalCount 220

Select-String -Path 'D:\dev\00_repository_templates\AGENTS.md' -Pattern 'Skill選定ガイド','Used-Subagents','Subagents と Skills の記録ルール','Skills と Subagents は同時に利用してよい'
Select-String -Path 'D:\dev\00_repository_templates\docs\worklog\_template.md' -Pattern 'Used-Subagents','Do not record Subagent names here','Skill/Subagent fields separated'
Select-String -Path 'D:\dev\00_repository_templates\docs\worklog\README.md' -Pattern 'Used-Skills','Used-Subagents'
```

## Tests

- Test 1: AGENTS.md のルール追記確認
  - result: PASS（該当キーワード検出）
- Test 2: _template.md の新規項目確認
  - result: PASS（`Used-Subagents` と注記を検出）
- Test 3: README.md の手順更新確認
  - result: PASS（分離記録ルールを検出）

## Rationale (Key Points)

- Skills と Subagents は目的が異なるため、同時利用は維持しつつ記録フィールドを分離するのが最小変更で効果が高い。
- `Used-Skills` への Subagent名混入を防ぐことで、集計精度を改善できる。

## Rollback

- 以下3ファイルの変更を取り消せばロールバック完了:
  - `AGENTS.md`
  - `docs/worklog/_template.md`
  - `docs/worklog/README.md`

## Record Check
- Execution fields recorded: Yes
- Tags include agent/model/tool: Yes
- Skill/Subagent fields separated: Yes

## Next Actions

- Obsidianテンプレート（`D:\Obsidian\Programming\00_repository_templates_obsidian_log_template.md`）にも `used-subagents` を追加して、記録形式を統一する。

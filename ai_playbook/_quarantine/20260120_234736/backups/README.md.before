# AI Playbook

> **AI エージェント用スキル・サブエージェントの統合管理システム**
> Codex / Claude Code / Antigravity で共通運用するための SSOT（Single Source of Truth）

---

## 目次

1. [概要](#概要)
2. [リポジトリ構造](#リポジトリ構造)
3. [インストール・セットアップ](#インストールセットアップ)
4. [運用手順](#運用手順)
5. [メンテナンス手順](#メンテナンス手順)
6. [新規スキル・サブエージェントの追加](#新規スキルサブエージェントの追加)
7. [トラブルシューティング](#トラブルシューティング)
8. [設計思想と技術詳細](#設計思想と技術詳細)

---

## 概要

### このリポジトリの目的

AI Playbook は、複数の AI コーディングツール（Codex、Claude Code、Antigravity）で共通利用できる **スキル** と **サブエージェント** を一元管理するためのシステムです。

### 主要な機能

| 機能 | 説明 |
|------|------|
| **SSOT管理** | スキル・サブエージェントの正本を一箇所で管理 |
| **自動配布** | junction（シンボリックリンク）で各ツールに自動配布 |
| **版数管理** | `playbook.yaml` / `build.lock.yaml` でバージョン追跡 |
| **診断機能** | `doctor.ps1` で整合性を自動検証 |
| **可搬性** | `__AUTO__` 設定で任意のパスに移動可能 |

### 対応ツール

| ツール | Skills | Subagents |
|--------|--------|-----------|
| **Codex** | ✅ `~/.codex/skills/` | - |
| **Claude Code** | ✅ `~/.claude/skills/` | ✅ `~/.claude/agents/` |
| **Antigravity** | ✅ `<PJ>/.agent/skills/` | - |

---

## リポジトリ構造

```
ai_playbook/                          ← SSOT（正本）ルート
│
├── skills/                           ← スキル定義
│   ├── phase-planning/
│   │   └── SKILL.md                  ← フェーズ計画・タスク分解
│   ├── bug-investigation/
│   │   └── SKILL.md                  ← バグ調査・根本原因分析
│   ├── code-review/
│   │   └── SKILL.md                  ← コードレビュー・品質評価
│   └── worklog-update/
│       └── SKILL.md                  ← 作業ログ更新・進捗記録
│
├── subagents/                        ← サブエージェント定義（ソース）
│   ├── minimal/                      ← 背骨3体（必須）
│   │   ├── planner.md                ← 計画立案
│   │   ├── implementer.md            ← 実装
│   │   └── reviewer.md               ← レビュー
│   ├── extended/                     ← 拡張2体（推奨）
│   │   ├── rapid-prototyper.md       ← 高速プロトタイピング
│   │   └── test-writer-fixer.md      ← テスト専任
│   └── catalog/                      ← 全カテゴリ（37体+、任意）
│       ├── engineering/
│       ├── design/
│       ├── marketing/
│       ├── testing/
│       ├── product/
│       ├── project-management/
│       ├── studio-operations/
│       └── bonus/
│
├── _compiled/                        ← 生成物（Gitignore対象）
│   ├── claude/
│   │   └── agents/                   ← 配布用エージェント
│   │       ├── planner.md
│   │       ├── implementer.md
│   │       ├── reviewer.md
│   │       ├── rapid-prototyper.md   ← extended時のみ
│   │       └── test-writer-fixer.md  ← extended時のみ
│   └── build.lock.yaml               ← ビルドロック（版数・ハッシュ）
│
├── meta/                             ← メタデータ（コミット対象）
│   ├── playbook.yaml                 ← バージョン管理（SemVer）
│   └── registry.yaml                 ← スキル・エージェント台帳
│
├── registry/                         ← ドキュメント
│   ├── START_HERE.md                 ← 入口・クイックスタート
│   ├── SKILLS_REGISTRY.md            ← スキル選定ルール
│   └── SUBAGENTS_REGISTRY.md         ← エージェント選定ルール
│
└── tooling/                          ← 管理スクリプト
    ├── config.psd1                   ← 設定ファイル
    ├── Common.ps1                    ← 共通関数モジュール
    ├── install.ps1                   ← インストール
    ├── update.ps1                    ← 更新
    ├── doctor.ps1                    ← 診断
    └── link_project.ps1              ← Antigravity用PJリンク
```

### ディレクトリの役割

| ディレクトリ | 役割 | Git管理 |
|--------------|------|---------|
| `skills/` | スキル定義のソース | ✅ |
| `subagents/` | サブエージェント定義のソース | ✅ |
| `_compiled/` | 配布用生成物（ビルド結果） | ❌ |
| `meta/` | バージョン・台帳メタデータ | ✅ |
| `registry/` | ユーザー向けドキュメント | ✅ |
| `tooling/` | 管理スクリプト | ✅ |

---

## インストール・セットアップ

### 前提条件

- Windows 10/11
- PowerShell 5.1以上
- 管理者権限（junction作成に必要な場合あり）

### 初回セットアップ

```powershell
# 1. リポジトリをクローン
git clone https://github.com/Hkobayashi-0415/00_repository_templates.git
cd 00_repository_templates\ai_playbook\tooling

# 2. インストール（モード選択）
.\install.ps1 -Mode minimal    # 背骨3体のみ（推奨）
.\install.ps1 -Mode extended   # 5体（3+2拡張）

# 3. 診断で確認
.\doctor.ps1 -Mode minimal     # または extended
```

### モード一覧

| モード | エージェント数 | 用途 |
|--------|----------------|------|
| **minimal** | 3体 | planner / implementer / reviewer（背骨） |
| **extended** | 5体 | minimal + rapid-prototyper / test-writer-fixer |
| **catalog** | 37体+ | 全カテゴリ（上級者向け） |

### Antigravity用プロジェクトリンク

```powershell
# プロジェクトにスキルをリンク
.\link_project.ps1 -ProjectPath "D:\dev\your_project"
.\link_project.ps1 -ProjectPath "D:\dev\your_project" -IncludeReadme  # README付き
```

---

## 運用手順

### 日常の使い方

#### 1. どのエージェントを使うか迷ったら

| 状況 | 使うエージェント |
|------|------------------|
| 何をすべきかわからない | `@planner` ← **デフォルト** |
| コードを実装したい | `@implementer` |
| レビューしたい | `@reviewer` |
| MVP/PoCを素早く作りたい | `@rapid-prototyper`（extended） |
| テストを追加・修正したい | `@test-writer-fixer`（extended） |

#### 2. ソースを編集した後の反映

```powershell
cd D:\dev\00_repository_templates\ai_playbook\tooling

# ソース編集後に更新
.\update.ps1 -Mode extended

# 診断で確認
.\doctor.ps1 -Mode extended
```

#### 3. 状態確認

```powershell
.\doctor.ps1 -Mode extended
```

**doctor出力の見方:**
```
  playbook_version: v0.4.0      ← 現在のバージョン
  agents_link:      junction    ← junction=最新同期 / copy=手動同期必要

  Build Lock Info:
    playbook_version: v0.4.0
    mode:             extended
    generated_at:     2026-01-19T23:17:XX+09:00  ← ビルド日時
```

### 復旧手順

| 状況 | コマンド |
|------|----------|
| doctor がNG | `.\update.ps1 -Mode X` → `.\doctor.ps1 -Mode X` |
| updateでもダメ | `.\install.ps1 -Mode X` → `.\doctor.ps1 -Mode X` |
| 完全にやり直し | junctionを削除して `.\install.ps1 -Mode X` |

---

## メンテナンス手順

### バージョン更新

```powershell
# 1. meta/playbook.yaml を編集
version: "0.5.0"  # SemVerで更新

# 2. 再ビルド
.\install.ps1 -Mode extended

# 3. 確認
.\doctor.ps1 -Mode extended
```

### 台帳更新

`meta/registry.yaml` を編集してスキル・エージェントの情報を更新:

```yaml
subagents:
  - id: planner
    version: "1.1.0"  # バージョン更新
    path: subagents/minimal/planner.md
    tags: [level/minimal, role/planning, target/claude]
```

### Junction の再作成（問題発生時）

```powershell
# 既存のjunctionを削除
cmd /c rmdir "C:\Users\<user>\.claude\agents"

# 再インストール
.\install.ps1 -Mode extended
```

### Gitignore確認

`_compiled/` は生成物なのでGit管理しない:

```gitignore
# Compiled subagents (generated)
ai_playbook/_compiled/
```

---

## 新規スキル・サブエージェントの追加

### 新規スキルの追加

#### 1. スキルディレクトリを作成

```powershell
mkdir ai_playbook\skills\my-new-skill
```

#### 2. SKILL.md を作成

```markdown
---
name: my-new-skill
description: "スキルの説明"
version: "1.0.0"
---

# My New Skill

## 目的
このスキルは...

## 使い方
1. ...
2. ...

## 出力形式
...
```

#### 3. config.psd1 に追加

```powershell
ExpectedSkills = @(
    'phase-planning'
    'bug-investigation'
    'code-review'
    'worklog-update'
    'my-new-skill'       # ← 追加
)
```

#### 4. registry.yaml に追加

```yaml
skills:
  - id: my-new-skill
    version: "1.0.0"
    path: skills/my-new-skill/SKILL.md
    tags: [level/core, role/custom, domain/your-domain, target/all]
    description: "スキルの説明"
```

#### 5. 再インストール・確認

```powershell
.\install.ps1 -Mode extended
.\doctor.ps1 -Mode extended
```

---

### 新規サブエージェントの追加

#### 1. エージェントファイルを作成

**minimal（背骨）に追加する場合:**
```powershell
# subagents/minimal/ に作成
New-Item -Path ai_playbook\subagents\minimal\my-agent.md -ItemType File
```

**extended（拡張）に追加する場合:**
```powershell
# subagents/extended/ に作成
New-Item -Path ai_playbook\subagents\extended\my-agent.md -ItemType File
```

#### 2. エージェント定義を記述

```markdown
---
name: my-agent
description: "エージェントの役割"
version: "1.0.0"
---

# My Agent

## 役割
このエージェントは...

## 責務
- ...
- ...

## 使うスキル
- `phase-planning`
- `worklog-update`

## 出力形式
### 結論
...

### 詳細
...
```

#### 3. config.psd1 に追加

**minimalの場合:**
```powershell
ExpectedAgentsMinimal = @(
    'planner.md'
    'implementer.md'
    'reviewer.md'
    'my-agent.md'        # ← 追加
)
```

**extendedの場合:**
```powershell
ExpectedAgentsExtended = @(
    'rapid-prototyper.md'
    'test-writer-fixer.md'
    'my-agent.md'        # ← 追加
)
```

#### 4. registry.yaml に追加

```yaml
subagents:
  minimal:  # または extended
    - id: my-agent
      version: "1.0.0"
      path: subagents/minimal/my-agent.md  # または extended/
      tags: [level/minimal, role/custom, domain/your-domain, target/claude]
      description: "エージェントの説明"
```

#### 5. 再インストール・確認

```powershell
.\install.ps1 -Mode extended
.\doctor.ps1 -Mode extended

# 配布先を確認
Get-ChildItem "$env:USERPROFILE\.claude\agents" -Filter "*.md" | Select Name
```

---

### 新規カテゴリの追加（catalog）

#### 1. カテゴリディレクトリを作成

```powershell
mkdir ai_playbook\subagents\catalog\my-category
```

#### 2. エージェントファイルを配置

```powershell
# 複数のエージェントを作成
New-Item -Path ai_playbook\subagents\catalog\my-category\agent1.md -ItemType File
New-Item -Path ai_playbook\subagents\catalog\my-category\agent2.md -ItemType File
```

#### 3. config.psd1 に追加

```powershell
CatalogCategories = @(
    'bonus'
    'design'
    'engineering'
    'marketing'
    'product'
    'project-management'
    'studio-operations'
    'testing'
    'my-category'        # ← 追加
)
```

---

## トラブルシューティング

### よくある問題と解決策

| 症状 | 原因 | 解決策 |
|------|------|--------|
| `junction creation failed` | 権限不足 | 管理者でPowerShell実行、または `-UseCopy` |
| `agents_link: copy` | junction失敗でコピー | 手動でjunction再作成、または `-UseCopy`継続 |
| `build.lock.yaml missing` | install未実行 | `.\install.ps1 -Mode X` |
| `Target mismatch` | 古いjunctionが残存 | junctionを削除して再install |
| doctor で NG | ファイル不足 | `.\install.ps1 -Mode X` で再生成 |

### 手動でjunctionを作成

```powershell
# 既存を削除
cmd /c rmdir "C:\Users\<user>\.claude\agents"

# junctionを作成
cmd /c mklink /J "C:\Users\<user>\.claude\agents" "D:\dev\00_repository_templates\ai_playbook\_compiled\claude\agents"
```

### copy モードを強制

```powershell
# junctionが使えない環境向け
.\install.ps1 -Mode extended -UseCopy
```

---

## 設計思想と技術詳細

### なぜ compiled 固定方式？

1. **編集事故防止**: 配布先を直接編集されると版数管理が破綻する
2. **一元管理**: ソースは `subagents/` のみ、配布先は生成物
3. **追跡可能**: `build.lock.yaml` でビルド日時・ハッシュを記録

### なぜ junction 優先？

1. **即時反映**: ソース→_compiled 更新後、配布先は自動反映
2. **容量節約**: ファイルコピーではなくリンク
3. **整合性**: 常に _compiled と同一内容を保証

### YAML/Lock の目的

| ファイル | 目的 |
|----------|------|
| `playbook.yaml` | SemVerでplaybook全体のバージョン管理 |
| `registry.yaml` | スキル・エージェントの台帳（id/version/tags） |
| `build.lock.yaml` | ビルド時のスナップショット（sha256ハッシュ） |

### 共通モジュール（Common.ps1）

| 関数 | 役割 |
|------|------|
| `Resolve-SSOTBase` | SSOTパスを可搬的に解決 |
| `Import-PlaybookConfig` | config.psd1を読み込み |
| `Build-CompiledPlaybook` | _compiled を生成 |
| `New-JunctionOrCopy` | junction作成（失敗時copy） |
| `Get-BuildLockInfo` | build.lock.yaml をパース |
| `Test-IsJunction` | junctionかどうか判定 |

---

## 関連ドキュメント

- [START_HERE.md](./registry/START_HERE.md) — クイックスタート
- [SKILLS_REGISTRY.md](./registry/SKILLS_REGISTRY.md) — スキル選定ルール
- [SUBAGENTS_REGISTRY.md](./registry/SUBAGENTS_REGISTRY.md) — エージェント選定ルール

---

## ライセンス

Private Repository

---

**Last Updated:** 2026-01-19 | **Version:** 0.4.0

# 🔴 START HERE — 最初に読むこと

> **このファイルは AI Playbook の入口です。**
> Skills / Sub-agents を Codex / Claude Code / Antigravity で共通運用するための SSOT です。

---

## クイックスタート（3ステップ）

```powershell
cd <repo>/ai_playbook/tooling

# Step 1: インストール
.\install.ps1 -Mode minimal   # 背骨の3体のみ（推奨）
.\install.ps1 -Mode extended  # 3体 + 追加2体（計5体）
.\install.ps1 -Mode catalog   # 全カテゴリ（上級者向け）

# Step 2: 診断
.\doctor.ps1 -Mode minimal    # または extended / catalog

# Step 3: Antigravity用PJリンク（任意）
.\link_project.ps1 -ProjectPath "D:\dev\your_project"
```

---

## モード一覧

| モード | エージェント数 | 用途 |
|--------|----------------|------|
| **minimal** | 3体 | 背骨（planner/implementer/reviewer） |
| **extended** | 5体 | minimal + 追加2体（rapid-prototyper/test-writer-fixer） |
| **catalog** | 37体+ | 全カテゴリ（default OFF、任意導入） |

---

## 迷ったら

| 状況 | 使うエージェント |
|------|------------------|
| 何をすべきかわからない | `@planner` ← **デフォルト** |
| 実装したい | `@implementer` |
| レビューしたい | `@reviewer` |
| MVP/PoCを素早く作りたい | `@rapid-prototyper`（extended） |
| テストを追加・修正したい | `@test-writer-fixer`（extended） |

---

## 構造

```
ai_playbook/                      ← SSOT（正本）
├── skills/                       ← 4スキル
├── subagents/
│   ├── minimal/                  ← 背骨3体
│   │   ├── planner.md
│   │   ├── implementer.md
│   │   └── reviewer.md
│   ├── extended/                 ← 追加2体
│   │   ├── rapid-prototyper.md
│   │   └── test-writer-fixer.md
│   └── catalog/                  ← 全カテゴリ（37体+）
├── registry/
│   ├── START_HERE.md             ← このファイル
│   ├── SKILLS_REGISTRY.md
│   └── SUBAGENTS_REGISTRY.md
└── tooling/
    ├── config.psd1
    ├── Common.ps1
    ├── install.ps1
    ├── update.ps1
    ├── doctor.ps1
    └── link_project.ps1
```

---

## 配布先

| ツール | Skills | Agents |
|--------|--------|--------|
| Codex | `~/.codex/skills/` | - |
| Claude | `~/.claude/skills/` | `~/.claude/agents/` |
| Antigravity | `<PJ>/.agent/skills/` | - |

---

## ⚠️ 重要: Claude agents は編集禁止

`~/.claude/agents/` は `_compiled` を参照。直接編集禁止！
- 編集対象: `subagents/minimal/` または `subagents/extended/`

---

## 更新・復旧手順

```powershell
# 更新: source編集後
.\update.ps1 -Mode extended
.\doctor.ps1 -Mode extended

# 復旧: おかしくなったら
.\install.ps1 -Mode extended
.\doctor.ps1 -Mode extended
```

---

## ログ運用

### 保存先
```
D:\Obsidian\Programming\
```

### 命名規則
```
<PJ>_phase<No>_log_<yymmdd>.md
例: washu_phase2_log_260118.md
```

---

## 詳細ドキュメント

- [SKILLS_REGISTRY.md](./SKILLS_REGISTRY.md) — スキル選定ルール
- [SUBAGENTS_REGISTRY.md](./SUBAGENTS_REGISTRY.md) — エージェント選定ルール

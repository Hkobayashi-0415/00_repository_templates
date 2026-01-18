# 🔴 START HERE — 最初に読むこと

> **このファイルは AI Playbook の入口です。**
> スキル・サブエージェントを使う前に、必ずこのドキュメントを確認してください。

---

## SSOT（正本）

```
D:\dev\00_repository_templates\ai_playbook\
├── skills/          ← スキル正本
├── subagents/
│   ├── minimal/     ← 必須3エージェント
│   └── catalog/     ← 拡張37エージェント
├── registry/        ← 選定ルール
└── tooling/         ← インストール・診断ツール
```

---

## クイックスタート

### 1. インストール
```powershell
cd D:\dev\00_repository_templates\ai_playbook\tooling
.\install.ps1
```

### 2. 診断
```powershell
.\doctor.ps1
```

### 3. PJにAntigravity用リンクを作成
```powershell
.\link_project.ps1 -ProjectPath "D:\dev\your_project"
```

---

## 迷ったら

| 状況 | 使うもの |
|------|----------|
| 何をすべきかわからない | `@planner` |
| 実装したい | `@implementer` |
| レビューしたい | `@reviewer` |

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

### 記録タイミング
- タスク完了時
- 日次作業終了時
- 重要な判断時

---

## 詳細ドキュメント

- [SKILLS_REGISTRY.md](./SKILLS_REGISTRY.md) — スキル選定ルール
- [SUBAGENTS_REGISTRY.md](./SUBAGENTS_REGISTRY.md) — エージェント選定ルール

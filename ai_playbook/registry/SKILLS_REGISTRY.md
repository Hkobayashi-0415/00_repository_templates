# 🔴 SKILLS REGISTRY — 必ず最初に読むこと

> **このファイルは SSOT（Single Source of Truth）です。**
> スキルを使用する前に、必ずこのレジストリで選定ルールを確認してください。

---

## 📋 目次
1. [選定フローチャート](#選定フローチャート)
2. [状況別スキル早見表](#状況別スキル早見表)
3. [スキル一覧](#スキル一覧)
4. [出力統一方針](#出力統一方針)
5. [迷ったときのデフォルト](#迷ったときのデフォルト)

---

## 選定フローチャート

```
┌─────────────────────────────────────────────────────────────┐
│ Q1: 何をしたいですか？                                      │
└─────────────────────────────────────────────────────────────┘
          │
          ├─→ 計画を立てたい ──────────→ 🎯 phase-planning
          │
          ├─→ バグを調査したい ────────→ 🔍 bug-investigation
          │
          ├─→ コードをレビューしたい ──→ 👀 code-review
          │
          ├─→ 作業を記録したい ────────→ 📝 worklog-update
          │
          └─→ 上記以外 ────────────────→ 「迷ったときのデフォルト」へ
```

---

## 状況別スキル早見表

| 状況・トリガー | 使うスキル | パス |
|----------------|------------|------|
| 新プロジェクト開始 | `phase-planning` | [skills/phase-planning/SKILL.md](../skills/phase-planning/SKILL.md) |
| 大きな機能追加の計画 | `phase-planning` | [skills/phase-planning/SKILL.md](../skills/phase-planning/SKILL.md) |
| バグレポートを受け取った | `bug-investigation` | [skills/bug-investigation/SKILL.md](../skills/bug-investigation/SKILL.md) |
| 予期しないエラーが発生 | `bug-investigation` | [skills/bug-investigation/SKILL.md](../skills/bug-investigation/SKILL.md) |
| PRをレビューする | `code-review` | [skills/code-review/SKILL.md](../skills/code-review/SKILL.md) |
| マージ前の品質確認 | `code-review` | [skills/code-review/SKILL.md](../skills/code-review/SKILL.md) |
| タスク完了時 | `worklog-update` | [skills/worklog-update/SKILL.md](../skills/worklog-update/SKILL.md) |
| 日次作業終了時 | `worklog-update` | [skills/worklog-update/SKILL.md](../skills/worklog-update/SKILL.md) |
| 重要な判断をした時 | `worklog-update` | [skills/worklog-update/SKILL.md](../skills/worklog-update/SKILL.md) |

---

## スキル一覧

### 1. phase-planning（フェーズ計画）
| 項目 | 内容 |
|------|------|
| **パス** | [skills/phase-planning/SKILL.md](../skills/phase-planning/SKILL.md) |
| **責務** | タスク分解、マイルストーン設計、リスク評価 |
| **使うとき** | プロジェクト開始、大きな機能追加、リプランニング |
| **使わないとき** | 1日以内で終わる小タスク、緊急ホットフィックス |

---

### 2. bug-investigation（バグ調査）
| 項目 | 内容 |
|------|------|
| **パス** | [skills/bug-investigation/SKILL.md](../skills/bug-investigation/SKILL.md) |
| **責務** | 根本原因特定、修正方針策定、再発防止策提案 |
| **使うとき** | バグレポート受領、予期しないエラー、本番障害 |
| **使わないとき** | 原因が明白な場合（タイポ等）、新機能実装 |

---

### 3. code-review（コードレビュー）
| 項目 | 内容 |
|------|------|
| **パス** | [skills/code-review/SKILL.md](../skills/code-review/SKILL.md) |
| **責務** | 品質評価、セキュリティ確認、改善提案 |
| **使うとき** | PRレビュー、マージ前確認、コード監査 |
| **使わないとき** | Linterで検出可能な問題のみ、設計レビュー |

---

### 4. worklog-update（ワークログ更新）
| 項目 | 内容 |
|------|------|
| **パス** | [skills/worklog-update/SKILL.md](../skills/worklog-update/SKILL.md) |
| **責務** | 作業記録、進捗可視化、経験値蓄積 |
| **使うとき** | タスク完了時、日次終了時、判断記録時 |
| **使わないとき** | 作業中（完了後に記録）、機密情報を含む場合 |
| **保存先** | `D:\Obsidian\Programming\<PJ>_phase<No>_log_<yymmdd>.md` |

---

## 出力統一方針

すべてのスキルは以下の構造で出力すること：

```markdown
# [スキル名]: [タスク/対象名]

## 1. 結論（Conclusion）
<最も重要な結論を1-2文で>

## 2. 根拠（Evidence）
<結論に至った理由、データ、観察結果>

## 3. 手順（Procedure）
1. <ステップ1>
2. <ステップ2>
3. <ステップ3>

## 4. 完了条件（DoD）
- [ ] <条件1>
- [ ] <条件2>
- [ ] <条件3>

## 5. 次のアクション
- [ ] <アクション>
```

### 出力ルール
| ルール | 説明 |
|--------|------|
| **結論ファースト** | 最初に結論を述べる。背景説明から始めない |
| **Markdown必須** | すべての出力はMarkdown形式 |
| **チェックリスト形式** | DoDは必ずチェックボックス形式 |
| **行番号付きコード** | コード引用時は行番号を含める |
| **相対パス** | ファイル参照は相対パスで |

---

## 迷ったときのデフォルト

### スキルが決まらない場合

```
┌─────────────────────────────────────────────────────────────┐
│ デフォルト: worklog-update                                  │
│                                                             │
│ 理由: 何かしらの作業をする/した場合、記録することで         │
│       後から振り返り可能になる。迷ったらまず記録。          │
└─────────────────────────────────────────────────────────────┘
```

### 複数スキルが該当する場合

**優先順位**（上から順に）:
1. `bug-investigation` — 問題が存在するなら最優先で調査
2. `phase-planning` — 計画がないなら計画を立てる
3. `code-review` — コード変更があるならレビュー
4. `worklog-update` — 上記以外なら記録

### スキルを使うか迷う場合

| 判断基準 | 使う | 使わない |
|----------|------|----------|
| 作業時間 | 30分以上 | 5分以内 |
| 複雑度 | 複数ステップ | 単一操作 |
| リスク | 失敗の影響大 | 影響軽微 |
| 再利用性 | 後で参照したい | 使い捨て |

---

## 更新履歴

| 日付 | 変更内容 | 担当 |
|------|----------|------|
| 2026-01-17 | 初版作成、選定ルール追加 | System |

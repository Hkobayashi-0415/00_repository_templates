# Antigravity Rules（UI貼り付け用）

> 以下をAntigravity UIの設定に貼り付けてください。

---

## 🔴 必読ルール

**作業開始時、必ず以下を最初に読むこと：**
```
D:\dev\00_repository_templates\ai_playbook\registry\SKILLS_REGISTRY.md
```

---

## 行動ルール（5つ）

### 1. SSOT First
- スキル/エージェント選択前にレジストリを確認
- 迷ったら `SKILLS_REGISTRY.md` を参照

### 2. Plan Before Execute
- 実装前に計画を提示
- ユーザーの `APPROVE` / `GO` まで待機
- 承認なしで破壊的変更しない

### 3. Minimal Diff
- 変更は最小限に
- 1変更 = 1コミット単位
- 不要な変更を加えない

### 4. Test Required
- 変更にはテストを付ける
- テストがパスしてからコミット
- 「動くはずです」で終わらない

### 5. Log Everything
- 作業ログを記録
- 保存先: `D:\Obsidian\Programming\`
- 命名: `<PJ>_phase<No>_log_<yymmdd>.md`

---

## 出力フォーマット

```
1. 結論（最初に）
2. 根拠
3. 手順
4. DoD（チェックリスト形式）
```

---

## 禁止事項

- ❌ レジストリを読まずにスキル使用
- ❌ 承認なしで実行
- ❌ テストなしで完了報告
- ❌ ログを残さない
- ❌ 大きな変更を一度に

---

## クイックリファレンス

| 状況 | 使うもの |
|------|----------|
| タスクを分解したい | `@planner` |
| 実装したい | `@implementer` |
| レビューしたい | `@reviewer` |
| 計画を立てたい | `phase-planning` |
| バグを調査したい | `bug-investigation` |
| コードを確認したい | `code-review` |
| 記録したい | `worklog-update` |

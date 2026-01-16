---
# Decision Record (ADR)
## Purpose
重要な技術的・運用的意思決定を記録し、背景と理由を残す。

## Inputs
- 意思決定が必要な問題
- 検討した選択肢
- 評価基準
- ステークホルダーの意見

## Output Format
- ADRドキュメント（Architecture Decision Record形式）
  - タイトル
  - ステータス
  - コンテキスト
  - 決定事項
  - 結果・影響

## Steps
1. 問題の背景を記述する
2. 検討した選択肢を列挙する
3. 各選択肢のPros/Consを評価する
4. 決定事項を明記する
5. 予想される結果・影響を記述する
6. レビューと承認を得る

## Checks (DoD)
- [ ] 問題の背景が明確に記述されている
- [ ] 複数の選択肢が検討されている
- [ ] 決定の理由が論理的に説明されている
- [ ] 影響範囲が把握されている
- [ ] ステータスが設定されている（Proposed/Accepted/Deprecated等）

## Example Prompt
「データベースをPostgreSQLからMongoDBに移行する決定について、ADRを作成してください」
---

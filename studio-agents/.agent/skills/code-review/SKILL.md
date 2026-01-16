---
name: code-review
description: コードの品質・保守性・セキュリティを確保するレビュースキル
---

# Code Review

## Purpose
- プルリクエストやコード差分をレビューし、品質を確保する

## When to Use
- PRがレビュー待ちの時
- コード変更の品質確認が必要な時

## Inputs
- レビュー対象のPR/差分
- コーディング規約
- 関連コンテキスト

## Output Format
- レビューコメント一覧（Must/Should分類）
- 総合評価とApprove/Request Changes判定

## Steps
1. 変更の目的と影響範囲を把握
2. コーディング規約への準拠を確認
3. ロジックの正確性を検証
4. セキュリティ・パフォーマンスを評価
5. フィードバックを整理

## Checks (DoD)
- [ ] 全変更ファイルをレビュー済み
- [ ] 重大な問題は指摘済み
- [ ] Approve/Request Changesを決定

## Resources
- resources/ 配下を参照

## Example Prompt
「このPRをレビューして、品質とセキュリティの観点から問題点を指摘してください」

---
name: bug-investigation
description: バグの原因特定と修正方針策定スキル
---

# Bug Investigation

## Purpose
- 報告されたバグの根本原因を特定し、修正方針を明確にする

## When to Use
- バグレポートを受け取った時
- 予期しない動作が発生した時

## Inputs
- バグレポート（再現手順、期待動作、実際の動作）
- 関連ログ・エラーメッセージ
- 環境情報

## Output Format
- 根本原因分析（RCA）レポート
- 修正方針と影響範囲
- 再発防止策

## Steps
1. バグを再現
2. ログとエラーを収集
3. 問題箇所を特定
4. 根本原因を分析
5. 修正方針を策定

## Checks (DoD)
- [ ] バグが再現できる
- [ ] 根本原因が特定されている
- [ ] 修正方針が明確

## Resources
- resources/ 配下を参照

## Example Prompt
「ログイン時の500エラーを調査してください」

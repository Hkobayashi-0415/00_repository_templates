# Skills Index

> 各 `SKILL.md` 本文の節構造（Purpose / Use this skill when / Capabilities / Prerequisites / Notes / Pitfalls 等）を参照して再構成した索引。
> Generated: 2026-03-12 | Total: **937 skills**

## 目次
- [コアスキル（内製）](#コアスキル内製)
- [システムスキル](#システムスキル)
- [スキル一覧](#スキル一覧)

---

## コアスキル（内製）

| スキル名 | 用途概要 | 特徴と使用シーン | 備考 |
|---------|----------|------------------|------|
| `bug-investigation` | 報告されたバグの原因を切り分け、再現条件・根本原因・修正方針を明確にする内製スキル。 | 不具合調査、再現手順の確立、影響範囲の確認、修正候補の比較検討で使う。調査に集中し、実装やレビューとは責務を分けて扱う。 | 小さな不具合でも、症状だけで直さず根拠を積み上げる前提。原因未確定のまま修正に進まない運用向け。 |
| `code-review` | 品質・保守性・セキュリティの観点から変更差分を確認し、問題点と改善優先度を整理する内製レビュースキル。 | 実装後のレビュー、結果確認、品質ゲート、リスク洗い出しに使う。機能説明よりも、欠陥・回帰・テスト不足の指摘を中心に扱う。 | レビュー専用スキルであり、実装判断とは分離して使う想定。重大度順で指摘を整理する用途に向く。 |
| `phase-planning` | プロジェクトや大きな変更を複数フェーズに分解し、マイルストーン・タスク・完了条件を設計する内製計画スキル。 | 新規プロジェクト開始時、大規模機能追加、リプランニング、ロードマップ提示に使う。3〜5フェーズ推奨、1日以内粒度のタスク分解、リスク整理まで求める。 | 計画専用であり、実装や進捗管理は別スキルの責務。緊急ホットフィックスや小タスクには不向き。 |
| `worklog-update` | 作業内容・判断・課題・次アクションを記録し、進捗と知見を後から追える形で残す内製ログ更新スキル。 | タスク完了時、日次作業終了時、重要判断時、ブロッカー発生時の記録に使う。完了タスク、判断理由、学び、次アクションを一貫して残す。 | ログ記録専用で、作業中ではなく節目で使う想定。機密情報を含めず、所定の記録項目を満たす必要がある。 |

---

## システムスキル

| スキル名 | 用途概要 | 特徴と使用シーン | 備考 |
|---------|----------|------------------|------|
| `skill-creator` | 「skill creator」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 前提条件と注意事項は SKILL.md 本文を参照。 |
| `skill-installer` | 「skill installer」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 前提条件と注意事項は SKILL.md 本文を参照。 |

---

## スキル一覧

| スキル名 | 用途概要 | 特徴と使用シーン | 備考 |
|---------|----------|------------------|------|
| `2d-games` | 「2d games」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `3d-games` | 「3d games」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `3d-web-experience` | 「3d web experience」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `ab-test-setup` | 実装前にA/Bテストの妥当性を固めるための計画・検証ガイド。仮説、対象ユーザー、主要指標、MDE、ガードレール、必要サンプル数を確定し、無効な実験を止める。 | 新規施策の検証、UI変更の効果測定、コンバージョン改善施策の事前設計で使う。仮説ロック、前提条件確認、テスト種別選定、実施可否判定、実行中の禁止事項、結果解釈まで一連で管理する。 | 「主要指標未定義」「流入不足」「複数変更の同時投入」などでは進行を拒否する設計。途中観測による早期打ち切りや指標変更を防ぐためのハードゲートがある。 |
| `accessibility-compliance-accessibility-audit` | 「accessibility compliance accessibility audit」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `active-directory-attacks` | 「active directory attacks」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認可済み環境での検証・教育用途に限定。 |
| `activecampaign-automation` | 「activecampaign automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `address-github-comments` | 「address github comments」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、評価・検証観点、画面・構成要素の調整 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `agent-evaluation` | 「agent evaluation」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、評価・検証観点、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `agent-framework-azure-ai-py` | 「agent framework azure ai py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `agent-manager-skill` | 複数のローカルCLIエージェントを tmux セッションで起動・監視・タスク割当するための運用スキル。 | 並列にエージェントを走らせたいとき、ログ監視したいとき、cronで定期実行したいときに使う。list start monitor assign といった管理コマンド中心で、ローカル運用の実務に寄っている。 | 利用前に別リポジトリのクローンが必要で、tmux と python3 が前提。一般論ではなく、付属スクリプトを操作する運用手順集に近い。 |
| `agent-memory-mcp` | 「agent memory mcp」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `agent-memory-systems` | 「agent memory systems」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `agent-orchestration-improve-agent` | 「agent orchestration improve agent」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `agent-orchestration-multi-agent-optimize` | 「agent orchestration multi agent optimize」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `agent-tool-builder` | 「agent tool builder」 の作成、導入、登録フローを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、評価・検証観点 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `agents-v2-py` | 「agents v2 py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `ai-agent-development` | 「ai agent development」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe |
| `ai-agents-architect` | 「ai agents architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `ai-engineer` | 「ai engineer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `ai-ml` | 「ai ml」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe / 認証方式や接続設定の前提あり。 |
| `ai-product` | 「ai product」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `ai-wrapper-product` | 「ai wrapper product」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `airflow-dag-patterns` | 「airflow dag patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `airtable-automation` | 「airtable automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `algolia-search` | 「algolia search」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `algorithmic-art` | 「algorithmic art」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `amplitude-automation` | 「amplitude automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `analytics-tracking` | 「analytics tracking」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `android-jetpack-compose-expert` | 「android jetpack compose expert」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe |
| `angular` | 「angular」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: self / リスク: safe |
| `angular-best-practices` | 「angular best practices」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: self / リスク: safe |
| `angular-migration` | 「angular migration」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `angular-state-management` | 「angular state management」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: self / リスク: safe |
| `angular-ui-patterns` | 「angular ui patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: self / リスク: safe |
| `anti-reversing-techniques` | 「anti reversing techniques」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、安全条件・禁止事項、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認可済み環境での検証・教育用途に限定。 |
| `antigravity-workflows` | 「antigravity workflows」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: self / リスク: none |
| `api-design-principles` | 「api design principles」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `api-documentation` | 「api documentation」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe |
| `api-documentation-generator` | 「api documentation generator」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `api-documenter` | 「api documenter」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `api-fuzzing-bug-bounty` | 「api fuzzing bug bounty」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 / 認可済み環境での検証・教育用途に限定。 |
| `api-patterns` | 「api patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `api-security-best-practices` | 「api security best practices」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `api-security-testing` | 「api security testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、主要ツール/API 利用、評価・検証観点 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: personal / リスク: safe / 認証方式や接続設定の前提あり。 |
| `api-testing-observability-api-mock` | 「api testing observability api mock」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `app-builder` | 「app builder」 の作成、導入、登録フローを扱うスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `app-store-optimization` | 「app store optimization」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `application-performance-performance-optimization` | 「application performance performance optimization」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `architect-review` | 「architect review」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `architecture` | 「architecture」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `architecture-decision-records` | 「architecture decision records」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `architecture-patterns` | 「architecture patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、安全条件・禁止事項、評価・検証観点 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `arm-cortex-expert` | 「arm cortex expert」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `asana-automation` | 「asana automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `async-python-patterns` | 「async python patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `attack-tree-construction` | 「attack tree construction」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、安全条件・禁止事項、評価・検証観点、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `audio-transcriber` | 「audio transcriber」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe / 認証方式や接続設定の前提あり。 |
| `auth-implementation-patterns` | 「auth implementation patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `automate-whatsapp` | 「automate whatsapp」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: https://github.com/gokapso/agent-skills/tree/master/skills/automate-whatsapp / リスク: safe |
| `autonomous-agent-patterns` | 「autonomous agent patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `autonomous-agents` | 「autonomous agents」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `avalonia-layout-zafiro` | 「avalonia layout zafiro」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `avalonia-viewmodels-zafiro` | 「avalonia viewmodels zafiro」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `avalonia-zafiro-development` | 「avalonia zafiro development」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `aws-compliance-checker` | 「aws compliance checker」 の検証、監査、リスク確認を支援するスキル。 | 本文では 代表的な操作手順、主要ツール/API 利用、評価・検証観点、画面・構成要素の調整 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: safe |
| `aws-cost-cleanup` | 「aws cost cleanup」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe |
| `aws-cost-optimizer` | 「aws cost optimizer」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe |
| `aws-iam-best-practices` | 「aws iam best practices」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: safe |
| `aws-penetration-testing` | 「aws penetration testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `aws-secrets-rotation` | 「aws secrets rotation」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: safe / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `aws-security-audit` | 「aws security audit」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、代表的な操作手順、主要ツール/API 利用、評価・検証観点 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: safe |
| `aws-serverless` | 「aws serverless」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown / Node.js 前提。 |
| `aws-skills` | 「aws skills」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/zxkane/aws-skills / リスク: safe |
| `azd-deployment` | 「azd deployment」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-agents-persistent-dotnet` | &#124;" Azure AI Agents Persistent SDK for .NET. Low-level SDK for creating and managing AI agents with threads, m… | 主な構成: 1. Create Agent、2. Create Thread and Message、3. Run Agent (Polling)、4. Streaming Response。 | 出所: community |
| `azure-ai-agents-persistent-java` | 「azure ai agents persistent java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-anomalydetector-java` | 「azure ai anomalydetector java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-contentsafety-java` | 「azure ai contentsafety java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-contentsafety-py` | 「azure ai contentsafety py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-contentsafety-ts` | 「azure ai contentsafety ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-contentunderstanding-py` | &#124;" Azure AI Content Understanding SDK for Python. Use for multimodal content extraction from documents, image… | 本文に明示された手順・対象・構成要素を参照。 | 出所: community |
| `azure-ai-document-intelligence-dotnet` | 「azure ai document intelligence dotnet」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-document-intelligence-ts` | 「azure ai document intelligence ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-formrecognizer-java` | 「azure ai formrecognizer java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-ml-py` | 「azure ai ml py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-openai-dotnet` | 「azure ai openai dotnet」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-projects-dotnet` | &#124;" Azure AI Projects SDK for .NET. High-level client for Azure AI Foundry projects including agents, connecti… | 主な構成: 1. Get Persistent Agents Client、2. Versioned Agents with Tools (Preview)、3. Connections、4. Deployments。 | 出所: community |
| `azure-ai-projects-java` | 「azure ai projects java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-projects-py` | 「azure ai projects py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-projects-ts` | 「azure ai projects ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-textanalytics-py` | 「azure ai textanalytics py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-transcription-py` | &#124;" Azure AI Transcription SDK for Python. Use for real-time and batch speech-to-text transcription with times… | 本文に明示された手順・対象・構成要素を参照。 | 出所: community |
| `azure-ai-translation-document-py` | 「azure ai translation document py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-translation-text-py` | 「azure ai translation text py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-translation-ts` | 「azure ai translation ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-vision-imageanalysis-java` | 「azure ai vision imageanalysis java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-vision-imageanalysis-py` | 「azure ai vision imageanalysis py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-voicelive-dotnet` | 「azure ai voicelive dotnet」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-voicelive-java` | 「azure ai voicelive java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-voicelive-py` | 「azure ai voicelive py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-ai-voicelive-ts` | 「azure ai voicelive ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `azure-appconfiguration-java` | 「azure appconfiguration java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-appconfiguration-py` | 「azure appconfiguration py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-appconfiguration-ts` | 「azure appconfiguration ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-communication-callautomation-java` | 「azure communication callautomation java」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-communication-callingserver-java` | 「azure communication callingserver java」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、主要ツール/API 利用、安全条件・禁止事項、画面・構成要素の調整 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `azure-communication-chat-java` | 「azure communication chat java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `azure-communication-common-java` | 「azure communication common java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-communication-sms-java` | 「azure communication sms java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-compute-batch-java` | 「azure compute batch java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-containerregistry-py` | 「azure containerregistry py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-cosmos-db-py` | 「azure cosmos db py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-cosmos-java` | 「azure cosmos java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `azure-cosmos-py` | 「azure cosmos py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-cosmos-rust` | 「azure cosmos rust」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-cosmos-ts` | 「azure cosmos ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `azure-data-tables-java` | 「azure data tables java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-data-tables-py` | 「azure data tables py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-eventgrid-dotnet` | 「azure eventgrid dotnet」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-eventgrid-java` | 「azure eventgrid java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-eventgrid-py` | 「azure eventgrid py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、主要ツール/API 利用、評価・検証観点 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-eventhub-dotnet` | 「azure eventhub dotnet」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-eventhub-java` | 「azure eventhub java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-eventhub-py` | 「azure eventhub py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-eventhub-rust` | 「azure eventhub rust」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `azure-eventhub-ts` | 「azure eventhub ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-functions` | 「azure functions」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown / Node.js 前提。 |
| `azure-identity-dotnet` | 「azure identity dotnet」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-identity-java` | 「azure identity java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-identity-py` | 「azure identity py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-identity-rust` | 「azure identity rust」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-identity-ts` | 「azure identity ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-keyvault-certificates-rust` | 「azure keyvault certificates rust」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-keyvault-keys-rust` | 「azure keyvault keys rust」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-keyvault-keys-ts` | 「azure keyvault keys ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `azure-keyvault-py` | 「azure keyvault py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-keyvault-secrets-rust` | 「azure keyvault secrets rust」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-keyvault-secrets-ts` | 「azure keyvault secrets ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `azure-maps-search-dotnet` | 「azure maps search dotnet」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-messaging-webpubsub-java` | 「azure messaging webpubsub java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-messaging-webpubsubservice-py` | 「azure messaging webpubsubservice py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-mgmt-apicenter-dotnet` | &#124;" Azure API Center SDK for .NET. Centralized API inventory management with governance, versioning, and disco… | 主な構成: 1. Create API Center Service、2. Create Workspace、3. Create API、4. Create API Version。 | 出所: community |
| `azure-mgmt-apicenter-py` | &#124;" Azure API Center Management SDK for Python. Use for managing API inventory, metadata, and governance acros… | 本文に明示された手順・対象・構成要素を参照。 | 出所: community |
| `azure-mgmt-apimanagement-dotnet` | &#124;" Azure Resource Manager SDK for API Management in .NET. Use for MANAGEMENT PLANE operations: creating/manag… | 主な構成: 1. Create API Management Service、2. Create an API、3. Create a Product、4. Create a Subscription。 | 出所: community |
| `azure-mgmt-apimanagement-py` | &#124;" Azure API Management SDK for Python. Use for managing APIM services, APIs, products, subscriptions, and po… | 本文に明示された手順・対象・構成要素を参照。 | 出所: community |
| `azure-mgmt-applicationinsights-dotnet` | &#124;" Azure Application Insights SDK for .NET. Application performance monitoring and observability resource man… | 主な構成: 1. Create Application Insights Component (Workspace-based)、2. Get Connection String and Keys、3. Create API Key、4. Create Web Test (Availability Test)。 | 出所: community |
| `azure-mgmt-arizeaiobservabilityeval-dotnet` | 「azure mgmt arizeaiobservabilityeval dotnet」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-mgmt-botservice-dotnet` | &#124;" Azure Resource Manager SDK for Bot Service in .NET. Management plane operations for creating and managing… | 主な構成: 1. Create Bot Resource、2. Configure DirectLine Channel、3. Configure Microsoft Teams Channel、4. Configure Web Chat Channel。 | 出所: community |
| `azure-mgmt-botservice-py` | 「azure mgmt botservice py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-mgmt-fabric-dotnet` | &#124;" Azure Resource Manager SDK for Fabric in .NET. Use for MANAGEMENT PLANE operations: provisioning, scaling,… | 主な構成: 1. Create Fabric Capacity、2. Get Fabric Capacity、3. Update Capacity (Scale SKU or Change Admins)、4. Suspend and Resume Capacity。 | 出所: community |
| `azure-mgmt-fabric-py` | &#124;" Azure Fabric Management SDK for Python. Use for managing Microsoft Fabric capacities and resources. Trigge… | 本文に明示された手順・対象・構成要素を参照。 | 出所: community |
| `azure-mgmt-mongodbatlas-dotnet` | 「azure mgmt mongodbatlas dotnet」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-mgmt-weightsandbiases-dotnet` | &#124;" Azure Weights & Biases SDK for .NET. ML experiment tracking and model management via Azure Marketplace. Us… | 主な構成: 1. Create Weights & Biases Instance、2. Get Existing Instance、3. List All Instances、4. Configure Single Sign-On (SSO)。 | 出所: community |
| `azure-microsoft-playwright-testing-ts` | 「azure microsoft playwright testing ts」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-monitor-ingestion-java` | 「azure monitor ingestion java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-monitor-ingestion-py` | 「azure monitor ingestion py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-monitor-opentelemetry-exporter-java` | 「azure monitor opentelemetry exporter java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-monitor-opentelemetry-exporter-py` | &#124;" Azure Monitor OpenTelemetry Exporter for Python. Use for low-level OpenTelemetry export to Application Ins… | 本文に明示された手順・対象・構成要素を参照。 | 出所: community |
| `azure-monitor-opentelemetry-py` | &#124;" Azure Monitor OpenTelemetry Distro for Python. Use for one-line Application Insights setup with auto-instr… | 本文に明示された手順・対象・構成要素を参照。 | 出所: community |
| `azure-monitor-opentelemetry-ts` | 「azure monitor opentelemetry ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、主要ツール/API 利用、評価・検証観点 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `azure-monitor-query-java` | 「azure monitor query java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、主要ツール/API 利用、評価・検証観点 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-monitor-query-py` | 「azure monitor query py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-postgres-ts` | 「azure postgres ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-resource-manager-cosmosdb-dotnet` | &#124;" Azure Resource Manager SDK for Cosmos DB in .NET. Use for MANAGEMENT PLANE operations: creating/managing C… | 主な構成: 1. Create Cosmos DB Account、2. Create SQL Database、3. Create SQL Container、4. Configure Throughput。 | 出所: community |
| `azure-resource-manager-durabletask-dotnet` | &#124;" Azure Resource Manager SDK for Durable Task Scheduler in .NET. Use for MANAGEMENT PLANE operations: creati… | 主な構成: 1. Create Durable Task Scheduler、2. Create Scheduler with Consumption SKU、3. Create Task Hub、4. List Schedulers。 | 出所: community |
| `azure-resource-manager-mysql-dotnet` | &#124;" Azure MySQL Flexible Server SDK for .NET. Database management for MySQL Flexible Server deployments. Use f… | 主な構成: 1. Create MySQL Flexible Server、2. Create Database、3. Configure Firewall Rules、4. Update Server Configuration。 | 出所: community |
| `azure-resource-manager-playwright-dotnet` | &#124;" Azure Resource Manager SDK for Microsoft Playwright Testing in .NET. Use for MANAGEMENT PLANE operations:… | 主な構成: 1. Create Playwright Workspace、2. Get Existing Workspace、3. List Workspaces、4. Update Workspace。 | 出所: community |
| `azure-resource-manager-postgresql-dotnet` | &#124;" Azure PostgreSQL Flexible Server SDK for .NET. Database management for PostgreSQL Flexible Server deployme… | 主な構成: 1. Create PostgreSQL Flexible Server、2. Create Database、3. Configure Firewall Rules、4. Update Server Configuration。 | 出所: community |
| `azure-resource-manager-redis-dotnet` | &#124;" Azure Resource Manager SDK for Redis in .NET. Use for MANAGEMENT PLANE operations: creating/managing Azure… | 主な構成: 1. Create Redis Cache、2. Get Redis Cache、3. Update Redis Cache、4. Delete Redis Cache。 | 出所: community |
| `azure-resource-manager-sql-dotnet` | &#124;" Azure Resource Manager SDK for Azure SQL in .NET. Use for MANAGEMENT PLANE operations: creating/managing S… | 主な構成: 1. Create SQL Server、2. Create SQL Database、3. Create Elastic Pool、4. Add Database to Elastic Pool。 | 出所: community |
| `azure-search-documents-dotnet` | 「azure search documents dotnet」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-search-documents-py` | 「azure search documents py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-search-documents-ts` | 「azure search documents ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-security-keyvault-keys-dotnet` | 「azure security keyvault keys dotnet」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-security-keyvault-keys-java` | 「azure security keyvault keys java」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-security-keyvault-secrets-java` | 「azure security keyvault secrets java」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-servicebus-dotnet` | 「azure servicebus dotnet」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-servicebus-py` | &#124;" Azure Service Bus SDK for Python messaging. Use for queues, topics, subscriptions, and enterprise messagin… | 本文に明示された手順・対象・構成要素を参照。 | 出所: community |
| `azure-servicebus-ts` | 「azure servicebus ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-speech-to-text-rest-py` | 「azure speech to text rest py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-storage-blob-java` | 「azure storage blob java」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-storage-blob-py` | 「azure storage blob py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-storage-blob-rust` | 「azure storage blob rust」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-storage-blob-ts` | 「azure storage blob ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `azure-storage-file-datalake-py` | 「azure storage file datalake py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-storage-file-share-py` | 「azure storage file share py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `azure-storage-file-share-ts` | 「azure storage file share ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `azure-storage-queue-py` | &#124;" Azure Queue Storage SDK for Python. Use for reliable message queuing, task distribution, and asynchronous… | 本文に明示された手順・対象・構成要素を参照。 | 出所: community |
| `azure-storage-queue-ts` | 「azure storage queue ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `azure-web-pubsub-ts` | 「azure web pubsub ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `backend-architect` | 「backend architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `backend-dev-guidelines` | 「backend dev guidelines」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `backend-development-feature-development` | 「backend development feature development」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `backend-security-coder` | 「backend security coder」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `backtesting-frameworks` | 「backtesting frameworks」 の検証、監査、リスク確認を支援するスキル。 | 本文では 設計方針、安全条件・禁止事項、評価・検証観点、画面・構成要素の調整 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `bamboohr-automation` | 「bamboohr automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `base` | 「base」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe / LibreOffice 前提。 / 認証方式や接続設定の前提あり。 |
| `basecamp-automation` | 「basecamp automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `bash-defensive-patterns` | 「bash defensive patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `bash-linux` | 「bash linux」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `bash-pro` | 「bash pro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `bash-scripting` | 「bash scripting」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe |
| `bats-testing-patterns` | 「bats testing patterns」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `bazel-build-optimization` | 「bazel build optimization」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `beautiful-prose` | 「beautiful prose」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/SHADOWPR0/beautiful_prose / リスク: safe |
| `behavioral-modes` | 「behavioral modes」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `bevy-ecs-expert` | 「bevy ecs expert」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe |
| `billing-automation` | 「billing automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、安全条件・禁止事項 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown |
| `binary-analysis-patterns` | 「binary analysis patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `bitbucket-automation` | 「bitbucket automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `blockchain-developer` | 「blockchain developer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `blockrun` | 「blockrun」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `box-automation` | 「box automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `brainstorming` | 「brainstorming」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `brand-guidelines-anthropic` | 「brand guidelines anthropic」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `brand-guidelines-community` | 「brand guidelines community」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `brevo-automation` | 「brevo automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `broken-authentication` | 「broken authentication」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `browser-automation` | 「browser automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、評価・検証観点 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `browser-extension-builder` | 「browser extension builder」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `bullmq-specialist` | 「bullmq specialist」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `bun-development` | 「bun development」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `burp-suite-testing` | 「burp suite testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `business-analyst` | 「business analyst」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `busybox-on-windows` | 「busybox on windows」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `c-pro` | 「c pro」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、主要ツール/API 利用、安全条件・禁止事項、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `c4-architecture-c4-architecture` | 「c4 architecture c4 architecture」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `c4-code` | 「c4 code」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `c4-component` | 「c4 component」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `c4-container` | 「c4 container」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `c4-context` | 「c4 context」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `cal-com-automation` | 「cal com automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `calc` | 「calc」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe / LibreOffice 前提。 |
| `calendly-automation` | 「calendly automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `canva-automation` | 「canva automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `canvas-design` | 「canvas design」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `cc-skill-backend-patterns` | 「cc skill backend patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `cc-skill-clickhouse-io` | 「cc skill clickhouse io」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `cc-skill-coding-standards` | 「cc skill coding standards」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `cc-skill-continuous-learning` | 「cc skill continuous learning」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `cc-skill-frontend-patterns` | 「cc skill frontend patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `cc-skill-project-guidelines-example` | 「cc skill project guidelines example」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `cc-skill-security-review` | 「cc skill security review」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `cc-skill-strategic-compact` | 「cc skill strategic compact」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `cdk-patterns` | 「cdk patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `changelog-automation` | 「changelog automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown |
| `cicd-automation-workflow-automate` | 「cicd automation workflow automate」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown |
| `circleci-automation` | 「circleci automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `clarity-gate` | 「clarity gate」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/frmoretto/clarity-gate / リスク: safe |
| `claude-ally-health` | 「claude ally health」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/huifer/Claude-Ally-Health / リスク: safe |
| `claude-code-guide` | 「claude code guide」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `claude-d3js-skill` | 「claude d3js skill」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `claude-scientific-skills` | 「claude scientific skills」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/K-Dense-AI/claude-scientific-skills / リスク: safe |
| `claude-speed-reader` | 「claude speed reader」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/SeanZoR/claude-speed-reader / リスク: safe |
| `claude-win11-speckit-update-skill` | 「claude win11 speckit update skill」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/NotMyself/claude-win11-speckit-update-skill / リスク: safe |
| `clean-code` | 「clean code」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: ClawForge (https://github.com/jackjin1997/ClawForge) / リスク: safe |
| `clerk-auth` | 「clerk auth」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `clickup-automation` | 「clickup automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `close-automation` | 「close automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `cloud-architect` | 「cloud architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `cloud-devops` | 「cloud devops」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe |
| `cloud-penetration-testing` | 「cloud penetration testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `cloudformation-best-practices` | 「cloudformation best practices」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `coda-automation` | 「coda automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `code-documentation-code-explain` | 「code documentation code explain」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `code-documentation-doc-generate` | 「code documentation doc generate」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、主要ツール/API 利用、安全条件・禁止事項、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `code-refactoring-context-restore` | 「code refactoring context restore」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `code-refactoring-refactor-clean` | 「code refactoring refactor clean」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `code-refactoring-tech-debt` | 「code refactoring tech debt」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `code-review-ai-ai-review` | 「code review ai ai review」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `code-review-checklist` | 「code review checklist」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `code-review-excellence` | 「code review excellence」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `code-reviewer` | 「code reviewer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `codebase-cleanup-deps-audit` | 「codebase cleanup deps audit」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `codebase-cleanup-refactor-clean` | 「codebase cleanup refactor clean」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、安全条件・禁止事項、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `codebase-cleanup-tech-debt` | 「codebase cleanup tech debt」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `codex-review` | 「codex review」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `commit` | 「commit」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、代表的な操作手順、主要ツール/API 利用、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/getsentry/skills/tree/main/plugins/sentry-skills/skills/commit / リスク: safe |
| `competitive-landscape` | 「competitive landscape」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `competitor-alternatives` | 「competitor alternatives」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `comprehensive-review-full-review` | 「comprehensive review full review」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `comprehensive-review-pr-enhance` | 「comprehensive review pr enhance」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、安全条件・禁止事項、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `computer-use-agents` | 「computer use agents」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `computer-vision-expert` | 「computer vision expert」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `concise-planning` | 「concise planning」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、評価・検証観点、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `conductor-implement` | 「conductor implement」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `conductor-manage` | 「conductor manage」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、安全条件・禁止事項、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `conductor-new-track` | 「conductor new track」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `conductor-revert` | 「conductor revert」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `conductor-setup` | 「conductor setup」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `conductor-status` | 「conductor status」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `conductor-validator` | 「conductor validator」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `confluence-automation` | 「confluence automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `content-creator` | 「content creator」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: community / リスク: unknown |
| `content-marketer` | 「content marketer」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `context-compression` | 「context compression」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/muratcankoylan/Agent-Skills-for-Context-Engineering/tree/main/skills… / リスク: safe |
| `context-degradation` | 「context degradation」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/muratcankoylan/Agent-Skills-for-Context-Engineering/tree/main/skills… / リスク: safe |
| `context-driven-development` | 「context driven development」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `context-fundamentals` | 「context fundamentals」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/muratcankoylan/Agent-Skills-for-Context-Engineering/tree/main/skills… / リスク: safe |
| `context-management-context-restore` | 「context management context restore」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `context-management-context-save` | 「context management context save」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `context-manager` | 「context manager」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `context-optimization` | 「context optimization」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、代表的な操作手順、主要ツール/API 利用、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/muratcankoylan/Agent-Skills-for-Context-Engineering/tree/main/skills… / リスク: safe |
| `context-window-management` | 「context window management」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `context7-auto-research` | 「context7 auto research」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、主要ツール/API 利用、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `conversation-memory` | 「conversation memory」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `convertkit-automation` | 「convertkit automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `copilot-sdk` | 「copilot sdk」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `copy-editing` | 「copy editing」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `copywriting` | 「copywriting」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `core-components` | 「core components」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `cost-optimization` | 「cost optimization」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `cpp-pro` | 「cpp pro」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `cqrs-implementation` | 「cqrs implementation」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、代表的な操作手順、安全条件・禁止事項、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `create-pr` | 「create pr」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/getsentry/skills/tree/main/plugins/sentry-skills/skills/create-pr / リスク: safe |
| `crewai` | 「crewai」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `crypto-bd-agent` | 「crypto bd agent」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe / 認証方式や接続設定の前提あり。 |
| `csharp-pro` | 「csharp pro」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `culture-index` | 「culture index」 の実装、設計、運用を支援するスキル。 | 本文では 代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/trailofbits/skills/tree/main/plugins/culture-index / リスク: safe |
| `customer-support` | 「customer support」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `daily-news-report` | 「daily news report」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `data-engineer` | 「data engineer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `data-engineering-data-driven-feature` | 「data engineering data driven feature」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `data-engineering-data-pipeline` | 「data engineering data pipeline」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `data-quality-frameworks` | 「data quality frameworks」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、安全条件・禁止事項、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `data-scientist` | 「data scientist」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `data-storytelling` | 「data storytelling」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `data-structure-protocol` | 「data structure protocol」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/k-kolomeitsev/data-structure-protocol / リスク: safe |
| `database` | 「database」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe |
| `database-admin` | 「database admin」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `database-architect` | 「database architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `database-cloud-optimization-cost-optimize` | 「database cloud optimization cost optimize」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `database-design` | 「database design」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `database-migration` | 「database migration」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `database-migrations-migration-observability` | 「database migrations migration observability」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `database-migrations-sql-migrations` | 「database migrations sql migrations」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `database-optimizer` | 「database optimizer」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `datadog-automation` | 「datadog automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `dbos-golang` | 「dbos golang」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://docs.dbos.dev/ / リスク: safe |
| `dbos-python` | 「dbos python」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: https://docs.dbos.dev/ / リスク: safe |
| `dbos-typescript` | 「dbos typescript」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: https://docs.dbos.dev/ / リスク: safe |
| `dbt-transformation-patterns` | 「dbt transformation patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `ddd-context-mapping` | 「ddd context mapping」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: self / リスク: safe |
| `ddd-strategic-design` | 「ddd strategic design」 の設計方針と実践パターンを扱うスキル。 | 本文では 設計方針、安全条件・禁止事項、画面・構成要素の調整 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: self / リスク: safe |
| `ddd-tactical-patterns` | 「ddd tactical patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: self / リスク: safe |
| `debugger` | 「debugger」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、主要ツール/API 利用、安全条件・禁止事項、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `debugging-strategies` | 「debugging strategies」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `debugging-toolkit-smart-debug` | 「debugging toolkit smart debug」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `deep-research` | 「deep research」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/sanjay3290/ai-skills/tree/main/skills/deep-research / リスク: safe / 認証方式や接続設定の前提あり。 |
| `defi-protocol-templates` | 「defi protocol templates」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `dependency-management-deps-audit` | 「dependency management deps audit」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `dependency-upgrade` | 「dependency upgrade」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `deployment-engineer` | 「deployment engineer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `deployment-pipeline-design` | 「deployment pipeline design」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `deployment-procedures` | 「deployment procedures」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `deployment-validation-config-validate` | 「deployment validation config validate」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `design-md` | 「design md」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: https://github.com/google-labs-code/stitch-skills/tree/main/skills/design-md / リスク: safe / 既存 UI 設定との整合確認が必要。 |
| `design-orchestration` | 「design orchestration」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、安全条件・禁止事項、評価・検証観点 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `development` | 「development」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe / Node.js 前提。 / 既存 UI 設定との整合確認が必要。 |
| `devops-troubleshooter` | 「devops troubleshooter」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `discord-automation` | 「discord automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `discord-bot-architect` | 「discord bot architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `dispatching-parallel-agents` | 「dispatching parallel agents」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `distributed-debugging-debug-trace` | 「distributed debugging debug trace」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `distributed-tracing` | 「distributed tracing」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `django-pro` | 「django pro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `doc-coauthoring` | 「doc coauthoring」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `docker-expert` | 「docker expert」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `docs-architect` | 「docs architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `documentation` | 「documentation」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe |
| `documentation-generation-doc-generate` | 「documentation generation doc generate」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、主要ツール/API 利用、安全条件・禁止事項、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `documentation-templates` | 「documentation templates」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `docusign-automation` | 「docusign automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `docx-official` | 「docx official」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / LibreOffice 前提。 |
| `domain-driven-design` | 「domain driven design」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: self / リスク: safe |
| `dotnet-architect` | 「dotnet architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `dotnet-backend` | 「dotnet backend」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: self / リスク: safe |
| `dotnet-backend-patterns` | 「dotnet backend patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 設計方針、主要ツール/API 利用、安全条件・禁止事項、評価・検証観点 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `draw` | 「draw」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe / LibreOffice 前提。 |
| `dropbox-automation` | 「dropbox automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `dx-optimizer` | 「dx optimizer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `e2e-testing` | 「e2e testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: personal / リスク: safe |
| `e2e-testing-patterns` | 「e2e testing patterns」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `elixir-pro` | 「elixir pro」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `email-sequence` | 「email sequence」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `email-systems` | 「email systems」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `embedding-strategies` | 「embedding strategies」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `employment-contract-templates` | 「employment contract templates」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、安全条件・禁止事項、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `environment-setup-guide` | 「environment setup guide」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `error-debugging-error-analysis` | 「error debugging error analysis」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `error-debugging-error-trace` | 「error debugging error trace」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、安全条件・禁止事項、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `error-debugging-multi-agent-review` | 「error debugging multi agent review」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `error-detective` | 「error detective」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `error-diagnostics-error-analysis` | 「error diagnostics error analysis」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `error-diagnostics-error-trace` | 「error diagnostics error trace」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `error-diagnostics-smart-debug` | 「error diagnostics smart debug」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `error-handling-patterns` | 「error handling patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `ethical-hacking-methodology` | 「ethical hacking methodology」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `evaluation` | 「evaluation」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/muratcankoylan/Agent-Skills-for-Context-Engineering/tree/main/skills… / リスク: safe |
| `event-sourcing-architect` | 「event sourcing architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `event-store-design` | 「event store design」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `exa-search` | 「exa search」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `executing-plans` | 「executing plans」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `expo-deployment` | 「expo deployment」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/expo/skills/tree/main/plugins/expo-deployment / リスク: safe |
| `fal-audio` | 「fal audio」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/fal-ai-community/skills/blob/main/skills/claude.ai/fal-audio/SKILL.md / リスク: safe |
| `fal-generate` | 「fal generate」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/fal-ai-community/skills/blob/main/skills/claude.ai/fal-generate/SKIL… / リスク: safe |
| `fal-image-edit` | 「fal image edit」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/fal-ai-community/skills/blob/main/skills/claude.ai/fal-image-edit/SK… / リスク: safe |
| `fal-platform` | 「fal platform」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/fal-ai-community/skills/blob/main/skills/claude.ai/fal-platform/SKIL… / リスク: safe |
| `fal-upscale` | 「fal upscale」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/fal-ai-community/skills/blob/main/skills/claude.ai/fal-upscale/SKILL.md / リスク: safe |
| `fal-workflow` | 「fal workflow」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/fal-ai-community/skills/blob/main/skills/claude.ai/fal-workflow/SKIL… / リスク: safe |
| `fastapi-pro` | 「fastapi pro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `fastapi-router-py` | 「fastapi router py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `fastapi-templates` | 「fastapi templates」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `ffuf-claude-skill` | 「ffuf claude skill」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/jthack/ffuf_claude_skill / リスク: safe |
| `figma-automation` | 「figma automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 / 既存 UI 設定との整合確認が必要。 |
| `file-organizer` | 「file organizer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `file-path-traversal` | 「file path traversal」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `file-uploads` | 「file uploads」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `find-bugs` | 「find bugs」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/getsentry/skills/tree/main/plugins/sentry-skills/skills/find-bugs / リスク: safe |
| `finishing-a-development-branch` | 「finishing a development branch」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `firebase` | 「firebase」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `firecrawl-scraper` | 「firecrawl scraper」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `firmware-analyst` | 「firmware analyst」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `fix-review` | 「fix review」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/trailofbits/skills/tree/main/plugins/fix-review / リスク: safe |
| `flutter-expert` | 「flutter expert」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `form-cro` | 「form cro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `fp-ts-errors` | 「fp ts errors」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: https://github.com/whatiskadudoing/fp-ts-skills / リスク: safe |
| `fp-ts-pragmatic` | 「fp ts pragmatic」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: https://github.com/whatiskadudoing/fp-ts-skills / リスク: safe |
| `fp-ts-react` | 「fp ts react」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: https://github.com/whatiskadudoing/fp-ts-skills / リスク: safe |
| `framework-migration-code-migrate` | 「framework migration code migrate」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `framework-migration-deps-upgrade` | 「framework migration deps upgrade」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `framework-migration-legacy-modernize` | 「framework migration legacy modernize」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `free-tool-strategy` | 「free tool strategy」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `freshdesk-automation` | 「freshdesk automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `freshservice-automation` | 「freshservice automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `frontend-design` | 「frontend design」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `frontend-dev-guidelines` | 「frontend dev guidelines」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `frontend-developer` | 「frontend developer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `frontend-mobile-development-component-scaffold` | 「frontend mobile development component scaffold」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `frontend-mobile-security-xss-scan` | 「frontend mobile security xss scan」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認可済み環境での検証・教育用途に限定。 |
| `frontend-security-coder` | 「frontend security coder」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `frontend-slides` | 「frontend slides」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/zarazhangrui/frontend-slides / リスク: safe |
| `frontend-ui-dark-ts` | 「frontend ui dark ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `full-stack-orchestration-full-stack-feature` | 「full stack orchestration full stack feature」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `game-art` | 「game art」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `game-audio` | 「game audio」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `game-design` | 「game design」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `game-development` | 「game development」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `gcp-cloud-run` | 「gcp cloud run」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `gdpr-data-handling` | 「gdpr data handling」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `gemini-api-dev` | 「gemini api dev」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `geo-fundamentals` | 「geo fundamentals」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `git-advanced-workflows` | 「git advanced workflows」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `git-pr-workflows-git-workflow` | 「git pr workflows git workflow」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `git-pr-workflows-onboard` | 「git pr workflows onboard」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `git-pr-workflows-pr-enhance` | 「git pr workflows pr enhance」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `git-pushing` | 「git pushing」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `github-actions-templates` | 「github actions templates」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `github-automation` | 「github automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `github-issue-creator` | 「github issue creator」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: community / リスク: unknown |
| `github-workflow-automation` | 「github workflow automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `gitlab-automation` | 「gitlab automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `gitlab-ci-patterns` | 「gitlab ci patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `gitops-workflow` | 「gitops workflow」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `gmail-automation` | 「gmail automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `go-concurrency-patterns` | 「go concurrency patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `go-playwright` | 「go playwright」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/playwright-community/playwright-go / リスク: safe |
| `go-rod-master` | 「go rod master」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/go-rod/rod / リスク: safe |
| `godot-4-migration` | 「godot 4 migration」 の実装、設計、運用を支援するスキル。 | 本文では 主要ツール/API 利用、安全条件・禁止事項、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe |
| `godot-gdscript-patterns` | 「godot gdscript patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `golang-pro` | 「golang pro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `google-analytics-automation` | 「google analytics automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `google-calendar-automation` | 「google calendar automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `google-drive-automation` | 「google drive automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `googlesheets-automation` | 「googlesheets automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `grafana-dashboards` | 「grafana dashboards」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `graphql` | 「graphql」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `graphql-architect` | 「graphql architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `haskell-pro` | 「haskell pro」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `helm-chart-scaffolding` | 「helm chart scaffolding」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `helpdesk-automation` | 「helpdesk automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `hig-components-content` | 「hig components content」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `hig-components-controls` | 「hig components controls」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `hig-components-dialogs` | 「hig components dialogs」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `hig-components-layout` | 「hig components layout」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `hig-components-menus` | 「hig components menus」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `hig-components-search` | 「hig components search」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `hig-components-status` | 「hig components status」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `hig-components-system` | 「hig components system」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `hig-foundations` | 「hig foundations」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `hig-inputs` | 「hig inputs」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `hig-patterns` | 「hig patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `hig-platforms` | 「hig platforms」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `hig-project-context` | 「hig project context」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `hig-technologies` | 「hig technologies」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `hosted-agents-v2-py` | 「hosted agents v2 py」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `hr-pro` | 「hr pro」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `html-injection-testing` | 「html injection testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `hubspot-automation` | 「hubspot automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `hubspot-integration` | 「hubspot integration」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `hugging-face-cli` | 「hugging face cli」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/huggingface/skills/tree/main/skills/hugging-face-cli / リスク: safe |
| `hugging-face-jobs` | 「hugging face jobs」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/huggingface/skills/tree/main/skills/hugging-face-jobs / リスク: safe |
| `hybrid-cloud-architect` | 「hybrid cloud architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `hybrid-cloud-networking` | 「hybrid cloud networking」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `hybrid-search-implementation` | 「hybrid search implementation」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `i18n-localization` | 「i18n localization」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `idor-testing` | 「idor testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `imagen` | 「imagen」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/sanjay3290/ai-skills/tree/main/skills/imagen / リスク: safe |
| `impress` | 「impress」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe / LibreOffice 前提。 |
| `incident-responder` | 「incident responder」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `incident-response-incident-response` | 「incident response incident response」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `incident-response-smart-fix` | 「incident response smart fix」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `incident-runbook-templates` | 「incident runbook templates」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `infinite-gratitude` | 「infinite gratitude」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/sstklen/infinite-gratitude / リスク: safe |
| `inngest` | 「inngest」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `instagram-automation` | 「instagram automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `interactive-portfolio` | 「interactive portfolio」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `intercom-automation` | 「intercom automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `internal-comms-anthropic` | 「internal comms anthropic」 の実装、設計、運用を支援するスキル。 | 本文では 代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `internal-comms-community` | 「internal comms community」 の実装、設計、運用を支援するスキル。 | 本文では 代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `ios-developer` | 「ios developer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `istio-traffic-management` | 「istio traffic management」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `iterate-pr` | 「iterate pr」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/getsentry/skills/tree/main/plugins/sentry-skills/skills/iterate-pr / リスク: safe |
| `java-pro` | 「java pro」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `javascript-mastery` | 「javascript mastery」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `javascript-pro` | 「javascript pro」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `javascript-testing-patterns` | 「javascript testing patterns」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `javascript-typescript-typescript-scaffold` | 「javascript typescript typescript scaffold」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 既存 UI 設定との整合確認が必要。 |
| `jira-automation` | 「jira automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `julia-pro` | 「julia pro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `k8s-manifest-generator` | 「k8s manifest generator」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `k8s-security-policies` | 「k8s security policies」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `kaizen` | 「kaizen」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `klaviyo-automation` | 「klaviyo automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `kotlin-coroutines-expert` | 「kotlin coroutines expert」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe |
| `kpi-dashboard-design` | 「kpi dashboard design」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `kubernetes-architect` | 「kubernetes architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `kubernetes-deployment` | 「kubernetes deployment」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe |
| `langchain-architecture` | 「langchain architecture」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `langfuse` | 「langfuse」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `langgraph` | 「langgraph」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `laravel-expert` | 「laravel expert」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe |
| `laravel-security-audit` | 「laravel security audit」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: safe |
| `last30days` | 「last30days」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `launch-strategy` | 「launch strategy」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `legacy-modernizer` | 「legacy modernizer」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `legal-advisor` | 「legal advisor」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `linear-automation` | 「linear automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `linear-claude-skill` | 「linear claude skill」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/wrsmith108/linear-claude-skill / リスク: safe / 認証方式や接続設定の前提あり。 |
| `linkedin-automation` | 「linkedin automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `linkerd-patterns` | 「linkerd patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `lint-and-validate` | 「lint and validate」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、主要ツール/API 利用、評価・検証観点、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `linux-privilege-escalation` | 「linux privilege escalation」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `linux-shell-scripting` | 「linux shell scripting」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `linux-troubleshooting` | 「linux troubleshooting」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe |
| `llm-app-patterns` | 「llm app patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `llm-application-dev-ai-assistant` | 「llm application dev ai assistant」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `llm-application-dev-langchain-agent` | 「llm application dev langchain agent」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `llm-application-dev-prompt-optimize` | 「llm application dev prompt optimize」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `llm-evaluation` | 「llm evaluation」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `loki-mode` | 「loki mode」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `m365-agents-dotnet` | 「m365 agents dotnet」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `m365-agents-py` | &#124;" Microsoft 365 Agents SDK for Python. Build multichannel agents for Teams/M365/Copilot Studio with aiohttp… | 本文に明示された手順・対象・構成要素を参照。 | 出所: community |
| `m365-agents-ts` | &#124;" Microsoft 365 Agents SDK for TypeScript/Node.js. Build multichannel agents for Teams/M365/Copilot Studio w… | 本文に明示された手順・対象・構成要素を参照。 | 出所: community |
| `machine-learning-ops-ml-pipeline` | 「machine learning ops ml pipeline」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `mailchimp-automation` | 「mailchimp automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `make-automation` | 「make automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `makepad-skills` | 「makepad skills」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/ZhangHanDong/makepad-skills / リスク: safe |
| `malware-analyst` | 「malware analyst」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `manifest` | 「manifest」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `market-sizing-analysis` | 「market sizing analysis」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `marketing-ideas` | 「marketing ideas」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `marketing-psychology` | 「marketing psychology」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `mcp-builder` | 「mcp builder」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: community / リスク: unknown |
| `mcp-builder-ms` | 「mcp builder ms」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `memory-forensics` | 「memory forensics」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `memory-safety-patterns` | 「memory safety patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `memory-systems` | 「memory systems」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/muratcankoylan/Agent-Skills-for-Context-Engineering/tree/main/skills… / リスク: safe |
| `mermaid-expert` | 「mermaid expert」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `metasploit-framework` | 「metasploit framework」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `micro-saas-launcher` | 「micro saas launcher」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `microservices-patterns` | 「microservices patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、安全条件・禁止事項、画面・構成要素の調整 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `microsoft-azure-webjobs-extensions-authentication-events-dotnet` | &#124;" Microsoft Entra Authentication Events SDK for .NET. Azure Functions triggers for custom authentication ext… | 主な構成: 1. Token Enrichment (Add Custom Claims)、2. Token Enrichment with External Data、3. Attribute Collection - Customize UI (Start Event)、4. Attribute Collection - Validate Submission (Submit Event)。 | 出所: community |
| `microsoft-teams-automation` | 「microsoft teams automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `minecraft-bukkit-pro` | 「minecraft bukkit pro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `miro-automation` | 「miro automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `mixpanel-automation` | 「mixpanel automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `ml-engineer` | 「ml engineer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `ml-pipeline-workflow` | 「ml pipeline workflow」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `mlops-engineer` | 「mlops engineer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `mobile-design` | 「mobile design」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `mobile-developer` | 「mobile developer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `mobile-games` | 「mobile games」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `mobile-security-coder` | 「mobile security coder」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `modern-javascript-patterns` | 「modern javascript patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `monday-automation` | 「monday automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `monorepo-architect` | 「monorepo architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `monorepo-management` | 「monorepo management」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `moodle-external-api-development` | 「moodle external api development」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `mtls-configuration` | 「mtls configuration」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `multi-agent-brainstorming` | 「multi agent brainstorming」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `multi-agent-patterns` | 「multi agent patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: https://github.com/muratcankoylan/Agent-Skills-for-Context-Engineering/tree/main/skills… / リスク: safe |
| `multi-cloud-architecture` | 「multi cloud architecture」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `multi-platform-apps-multi-platform` | 「multi platform apps multi platform」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `multiplayer` | 「multiplayer」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `n8n-code-python` | 「n8n code python」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: https://github.com/czlonkowski/n8n-skills/tree/main/skills/n8n-code-python / リスク: safe |
| `n8n-mcp-tools-expert` | 「n8n mcp tools expert」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/czlonkowski/n8n-skills/tree/main/skills/n8n-mcp-tools-expert / リスク: safe |
| `n8n-node-configuration` | 「n8n node configuration」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/czlonkowski/n8n-skills/tree/main/skills/n8n-node-configuration / リスク: safe |
| `nanobanana-ppt-skills` | 「nanobanana ppt skills」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/op7418/NanoBanana-PPT-Skills / リスク: safe |
| `neon-postgres` | 「neon postgres」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `nerdzao-elite` | 「nerdzao elite」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、評価・検証観点、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe |
| `nerdzao-elite-gemini-high` | 「nerdzao elite gemini high」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、評価・検証観点、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe |
| `nestjs-expert` | 「nestjs expert」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `network-101` | 「network 101」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `network-engineer` | 「network engineer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `nextjs-app-router-patterns` | 「nextjs app router patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `nextjs-best-practices` | 「nextjs best practices」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `nextjs-supabase-auth` | 「nextjs supabase auth」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `nft-standards` | 「nft standards」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `nodejs-backend-patterns` | 「nodejs backend patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `nodejs-best-practices` | 「nodejs best practices」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `nosql-expert` | 「nosql expert」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `notebooklm` | 「notebooklm」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `notion-automation` | 「notion automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `notion-template-business` | 「notion template business」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `nx-workspace-patterns` | 「nx workspace patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `observability-engineer` | 「observability engineer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `observability-monitoring-monitor-setup` | 「observability monitoring monitor setup」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `observability-monitoring-slo-implement` | 「observability monitoring slo implement」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `observe-whatsapp` | 「observe whatsapp」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: https://github.com/gokapso/agent-skills/tree/master/skills/observe-whatsapp / リスク: safe |
| `obsidian-clipper-template-creator` | 「obsidian clipper template creator」 の作成、導入、登録フローを扱うスキル。 | 本文では 実施フロー、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: community / リスク: unknown |
| `office-productivity` | 「office productivity」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe / LibreOffice 前提。 |
| `on-call-handoff-patterns` | 「on call handoff patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `onboarding-cro` | 「onboarding cro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `one-drive-automation` | 「one drive automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `openapi-spec-generation` | 「openapi spec generation」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `os-scripting` | 「os scripting」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe |
| `oss-hunter` | 「oss hunter」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/jackjin1997/ClawForge / リスク: safe |
| `outlook-automation` | 「outlook automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `outlook-calendar-automation` | 「outlook calendar automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `page-cro` | 「page cro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `pagerduty-automation` | 「pagerduty automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `paid-ads` | 「paid ads」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `parallel-agents` | 「parallel agents」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `payment-integration` | 「payment integration」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `paypal-integration` | 「paypal integration」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `paywall-upgrade-cro` | 「paywall upgrade cro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `pc-games` | 「pc games」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `pci-compliance` | 「pci compliance」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `pdf-official` | 「pdf official」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `pentest-checklist` | 「pentest checklist」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `pentest-commands` | 「pentest commands」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `performance-engineer` | 「performance engineer」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `performance-profiling` | 「performance profiling」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `performance-testing-review-ai-review` | 「performance testing review ai review」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `performance-testing-review-multi-agent-review` | 「performance testing review multi agent review」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `personal-tool-builder` | 「personal tool builder」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown / Node.js 前提。 |
| `php-pro` | 「php pro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `pipedrive-automation` | 「pipedrive automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `plaid-fintech` | 「plaid fintech」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `plan-writing` | 「plan writing」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `planning-with-files` | 「planning with files」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `playwright-skill` | 「playwright skill」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `podcast-generation` | 「podcast generation」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `popup-cro` | 「popup cro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `posix-shell-pro` | 「posix shell pro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `postgres-best-practices` | 「postgres best practices」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `postgresql` | 「postgresql」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、代表的な操作手順、安全条件・禁止事項、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `postgresql-optimization` | 「postgresql optimization」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe |
| `posthog-automation` | 「posthog automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `postmark-automation` | 「postmark automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `postmortem-writing` | 「postmortem writing」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `powershell-windows` | 「powershell windows」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `pptx-official` | 「pptx official」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / LibreOffice 前提。 |
| `pricing-strategy` | 「pricing strategy」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `prisma-expert` | 「prisma expert」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `privilege-escalation-methods` | 「privilege escalation methods」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `product-manager-toolkit` | 「product manager toolkit」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `production-code-audit` | 「production code audit」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `programmatic-seo` | 「programmatic seo」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `projection-patterns` | 「projection patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `prometheus-configuration` | 「prometheus configuration」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `prompt-caching` | 「prompt caching」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `prompt-engineer` | 「prompt engineer」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe |
| `prompt-engineering` | 「prompt engineering」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `prompt-engineering-patterns` | 「prompt engineering patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `prompt-library` | 「prompt library」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `protocol-reverse-engineering` | 「protocol reverse engineering」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `pydantic-models-py` | 「pydantic models py」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `pypict-skill` | 「pypict skill」 の実装、接続設定、運用を支援するスキル。 | 本文では 設計方針、評価・検証観点、画面・構成要素の調整 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: https://github.com/omkamal/pypict-claude-skill/blob/main/SKILL.md / リスク: safe |
| `python-development-python-scaffold` | 「python development python scaffold」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `python-fastapi-development` | 「python fastapi development」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: personal / リスク: safe |
| `python-packaging` | 「python packaging」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `python-patterns` | 「python patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `python-performance-optimization` | 「python performance optimization」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `python-pro` | 「python pro」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `python-testing-patterns` | 「python testing patterns」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `quant-analyst` | 「quant analyst」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `radix-ui-design-system` | 「radix ui design system」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: self / リスク: safe / 既存 UI 設定との整合確認が必要。 |
| `rag-engineer` | 「rag engineer」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `rag-implementation` | 「rag implementation」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe |
| `react-best-practices` | 「react best practices」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `react-flow-architect` | 「react flow architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `react-flow-node-ts` | 「react flow node ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `react-modernization` | 「react modernization」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `react-native-architecture` | 「react native architecture」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `react-nextjs-development` | 「react nextjs development」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: personal / リスク: safe / 既存 UI 設定との整合確認が必要。 |
| `react-patterns` | 「react patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `react-state-management` | 「react state management」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `react-ui-patterns` | 「react ui patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `readme` | 「readme」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/Shpigford/skills/tree/main/readme / リスク: safe / Node.js 前提。 / 認証方式や接続設定の前提あり。 / 既存 UI 設定との整合確認が必要。 |
| `receiving-code-review` | 「receiving code review」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `red-team-tactics` | 「red team tactics」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `red-team-tools` | 「red team tools」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `reddit-automation` | 「reddit automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `reference-builder` | 「reference builder」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: community / リスク: unknown |
| `referral-program` | 「referral program」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `remotion-best-practices` | 「remotion best practices」 の設計方針と実践パターンを扱うスキル。 | 本文では 設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `render-automation` | 「render automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `requesting-code-review` | 「requesting code review」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `research-engineer` | 「research engineer」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `reverse-engineer` | 「reverse engineer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `risk-manager` | 「risk manager」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、主要ツール/API 利用、安全条件・禁止事項、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `risk-metrics-calculation` | 「risk metrics calculation」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `ruby-pro` | 「ruby pro」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `rust-async-patterns` | 「rust async patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `rust-pro` | 「rust pro」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `saga-orchestration` | 「saga orchestration」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `sales-automator` | 「sales automator」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `salesforce-automation` | 「salesforce automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `salesforce-development` | 「salesforce development」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、評価・検証観点、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `sast-configuration` | 「sast configuration」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `scala-pro` | 「scala pro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `scanning-tools` | 「scanning tools」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `schema-markup` | 「schema markup」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `screen-reader-testing` | 「screen reader testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `screenshots` | 「screenshots」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: https://github.com/Shpigford/skills/tree/main/screenshots / リスク: safe / Node.js 前提。 |
| `scroll-experience` | 「scroll experience」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `search-specialist` | 「search specialist」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `secrets-management` | 「secrets management」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `security-audit` | 「security audit」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: personal / リスク: safe |
| `security-auditor` | 「security auditor」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `security-bluebook-builder` | 「security bluebook builder」 の検証、監査、リスク確認を支援するスキル。 | 本文では 設計方針、画面・構成要素の調整 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: https://github.com/SHADOWPR0/security-bluebook-builder / リスク: safe |
| `security-compliance-compliance-check` | 「security compliance compliance check」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、設計方針、安全条件・禁止事項、評価・検証観点 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `security-requirement-extraction` | 「security requirement extraction」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `security-scanning-security-dependencies` | 「security scanning security dependencies」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `security-scanning-security-hardening` | 「security scanning security hardening」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `security-scanning-security-sast` | 「security scanning security sast」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `segment-automation` | 「segment automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `segment-cdp` | 「segment cdp」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown / Node.js 前提。 |
| `sendgrid-automation` | 「sendgrid automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `senior-architect` | 「senior architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `senior-fullstack` | 「senior fullstack」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `sentry-automation` | 「sentry automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `seo-audit` | 「seo audit」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `seo-authority-builder` | 「seo authority builder」 の作成、導入、登録フローを扱うスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: community / リスク: unknown |
| `seo-cannibalization-detector` | 「seo cannibalization detector」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `seo-content-auditor` | 「seo content auditor」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `seo-content-planner` | 「seo content planner」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `seo-content-refresher` | 「seo content refresher」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `seo-content-writer` | 「seo content writer」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `seo-fundamentals` | 「seo fundamentals」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `seo-keyword-strategist` | 「seo keyword strategist」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `seo-meta-optimizer` | 「seo meta optimizer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `seo-snippet-hunter` | 「seo snippet hunter」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `seo-structure-architect` | 「seo structure architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `server-management` | 「server management」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `service-mesh-expert` | 「service mesh expert」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `service-mesh-observability` | 「service mesh observability」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `shadcn-ui` | 「shadcn ui」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: google-labs-code/stitch-skills (adapted for local policy) / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `shader-programming-glsl` | 「shader programming glsl」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe |
| `sharp-edges` | 「sharp edges」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/trailofbits/skills/tree/main/plugins/sharp-edges / リスク: safe |
| `shellcheck-configuration` | 「shellcheck configuration」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `shodan-reconnaissance` | 「shodan reconnaissance」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `shopify-apps` | 「shopify apps」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `shopify-automation` | 「shopify automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `shopify-development` | 「shopify development」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `signup-flow-cro` | 「signup flow cro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `similarity-search-patterns` | 「similarity search patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `skill-creator-ms` | 「skill creator ms」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `skill-developer` | 「skill developer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `skill-rails-upgrade` | 「skill rails upgrade」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/robzolkos/skill-rails-upgrade / リスク: safe |
| `skill-registration` | リポジトリへ新規 Skill を受け入れるための登録ワークフロー。候補 Skill の staging、レビュー、脅威判定、安全化、重複確認、索引更新、本番格納までを統制する。 | 外部 Skill 取り込み、新規 Skill 追加、試験運用から本番昇格するときに使う。`ai_playbook/skills_staging/` を起点に、危険操作の洗い出し、機能を壊さない安全対策、既存 Skill との統廃合判断、`SKILLS_INDEX.md` の分析追記を一連の流れとして扱う。 | 脅威判定基準の詳細は後続定義前提。レビュー未完了の Skill を直接 `ai_playbook/skills/` へ置かない運用を前提とする。 |
| `skill-seekers` | 「skill seekers」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/yusufkaraaslan/Skill_Seekers / リスク: safe |
| `slack-automation` | 「slack automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `slack-bot-builder` | 「slack bot builder」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown / Node.js 前提。 |
| `slack-gif-creator` | 「slack gif creator」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: community / リスク: unknown |
| `slo-implementation` | 「slo implementation」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `smtp-penetration-testing` | 「smtp penetration testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `social-content` | 「social content」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `software-architecture` | 「software architecture」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `solidity-security` | 「solidity security」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `spark-optimization` | 「spark optimization」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `sql-injection-testing` | 「sql injection testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `sql-optimization-patterns` | 「sql optimization patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `sql-pro` | 「sql pro」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `sqlmap-database-pentesting` | 「sqlmap database pentesting」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `square-automation` | 「square automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `ssh-penetration-testing` | 「ssh penetration testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `startup-analyst` | 「startup analyst」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `startup-business-analyst-business-case` | 「startup business analyst business case」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `startup-business-analyst-financial-projections` | 「startup business analyst financial projections」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `startup-business-analyst-market-opportunity` | 「startup business analyst market opportunity」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `startup-financial-modeling` | 「startup financial modeling」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `startup-metrics-framework` | 「startup metrics framework」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `stitch-ui-design` | 「stitch ui design」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: self / リスク: safe |
| `stride-analysis-patterns` | 「stride analysis patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `stripe-automation` | 「stripe automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `stripe-integration` | 「stripe integration」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `subagent-driven-development` | 「subagent driven development」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `supabase-automation` | 「supabase automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `superpowers-lab` | 「superpowers lab」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/obra/superpowers-lab / リスク: safe |
| `swiftui-expert-skill` | 「swiftui expert skill」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/AvdLee/SwiftUI-Agent-Skill/tree/main/swiftui-expert-skill / リスク: safe |
| `systematic-debugging` | 「systematic debugging」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `systems-programming-rust-project` | 「systems programming rust project」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `tailwind-design-system` | 「tailwind design system」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `tailwind-patterns` | 「tailwind patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `tavily-web` | 「tavily web」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `tdd-orchestrator` | 「tdd orchestrator」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `tdd-workflow` | 「tdd workflow」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `tdd-workflows-tdd-cycle` | 「tdd workflows tdd cycle」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `tdd-workflows-tdd-green` | 「tdd workflows tdd green」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `tdd-workflows-tdd-red` | 「tdd workflows tdd red」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `tdd-workflows-tdd-refactor` | 「tdd workflows tdd refactor」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `team-collaboration-issue` | 「team collaboration issue」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `team-collaboration-standup-notes` | 「team collaboration standup notes」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `team-composition-analysis` | 「team composition analysis」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `telegram-automation` | 「telegram automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `telegram-bot-builder` | 「telegram bot builder」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown / Node.js 前提。 |
| `telegram-mini-app` | 「telegram mini app」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `templates` | 「templates」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `temporal-python-pro` | 「temporal python pro」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `temporal-python-testing` | 「temporal python testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `terraform-aws-modules` | 「terraform aws modules」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `terraform-infrastructure` | 「terraform infrastructure」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe |
| `terraform-module-library` | 「terraform module library」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `terraform-skill` | 「terraform skill」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/antonbabenko/terraform-skill / リスク: safe |
| `terraform-specialist` | 「terraform specialist」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `test-automator` | 「test automator」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `test-driven-development` | 「test driven development」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `test-fixing` | 「test fixing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `testing-patterns` | 「testing patterns」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `testing-qa` | 「testing qa」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: personal / リスク: safe |
| `theme-factory` | 「theme factory」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `threat-mitigation-mapping` | 「threat mitigation mapping」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `threat-modeling-expert` | 「threat modeling expert」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、代表的な操作手順、安全条件・禁止事項、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `threejs-skills` | 「threejs skills」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/CloudAI-X/threejs-skills / リスク: safe |
| `tiktok-automation` | 「tiktok automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `todoist-automation` | 「todoist automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `tool-design` | 「tool design」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: https://github.com/muratcankoylan/Agent-Skills-for-Context-Engineering/tree/main/skills… / リスク: safe |
| `top-web-vulnerabilities` | 「top web vulnerabilities」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `track-management` | 「track management」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `trello-automation` | 「trello automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `trigger-dev` | 「trigger dev」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `turborepo-caching` | 「turborepo caching」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `tutorial-engineer` | 「tutorial engineer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `twilio-communications` | 「twilio communications」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `twitter-automation` | 「twitter automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `typescript-advanced-types` | 「typescript advanced types」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |
| `typescript-expert` | 「typescript expert」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `typescript-pro` | 「typescript pro」 の実装、接続設定、運用を支援するスキル。 | 本文では 設計方針、安全条件・禁止事項、評価・検証観点、画面・構成要素の調整 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `ui-skills` | 「ui skills」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/ibelick/ui-skills / リスク: safe |
| `ui-ux-designer` | 「ui ux designer」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `ui-ux-pro-max` | 「ui ux pro max」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `ui-visual-validator` | 「ui visual validator」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `unit-testing-test-generate` | 「unit testing test generate」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `unity-developer` | 「unity developer」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `unity-ecs-patterns` | 「unity ecs patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `unreal-engine-cpp-pro` | 「unreal engine cpp pro」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: self / リスク: safe |
| `upgrading-expo` | 「upgrading expo」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/expo/skills/tree/main/plugins/upgrading-expo / リスク: safe |
| `upstash-qstash` | 「upstash qstash」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `using-git-worktrees` | 「using git worktrees」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / Node.js 前提。 |
| `using-neon` | 「using neon」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/neondatabase/agent-skills/tree/main/skills/neon-postgres / リスク: safe / 認証方式や接続設定の前提あり。 |
| `using-superpowers` | 「using superpowers」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `uv-package-manager` | 「uv package manager」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `varlock-claude-skill` | 「varlock claude skill」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/wrsmith108/varlock-claude-skill / リスク: safe |
| `vector-database-engineer` | 「vector database engineer」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `vector-index-tuning` | 「vector index tuning」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、安全条件・禁止事項 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `vercel-automation` | 「vercel automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `vercel-deploy-claimable` | 「vercel deploy claimable」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、代表的な操作手順、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/vercel-labs/agent-skills/tree/main/skills/claude.ai/vercel-deploy-cl… / リスク: safe |
| `vercel-deployment` | 「vercel deployment」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、設計方針、主要ツール/API 利用、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: safe / Node.js 前提。 |
| `verification-before-completion` | 「verification before completion」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `vexor` | 「vexor」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/scarletkc/vexor / リスク: safe |
| `viral-generator-builder` | 「viral generator builder」 の作成、導入、登録フローを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 新規作成、導入、登録、受け入れフローの実行で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `voice-agents` | 「voice agents」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、評価・検証観点 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `voice-ai-development` | 「voice ai development」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown / Node.js 前提。 / 認証方式や接続設定の前提あり。 |
| `voice-ai-engine-development` | 「voice ai engine development」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `vr-ar` | 「vr ar」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、評価・検証観点 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `vulnerability-scanner` | 「vulnerability scanner」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown / 認証方式や接続設定の前提あり。 |
| `wcag-audit-patterns` | 「wcag audit patterns」 の検証、監査、リスク確認を支援するスキル。 | 本文では 実施フロー、設計方針、安全条件・禁止事項、評価・検証観点 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `web-artifacts-builder` | 「web artifacts builder」 の作成、導入、登録フローを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / 既存 UI 設定との整合確認が必要。 |
| `web-design-guidelines` | 「web design guidelines」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `web-games` | 「web games」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `web-performance-optimization` | 「web performance optimization」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `web-security-testing` | 「web security testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: personal / リスク: safe |
| `web3-testing` | 「web3 testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `webapp-testing` | 「webapp testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `webflow-automation` | 「webflow automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `whatsapp-automation` | 「whatsapp automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `wiki-architect` | 「wiki architect」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `wiki-changelog` | 「wiki changelog」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `wiki-onboarding` | 「wiki onboarding」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `wiki-page-writer` | 「wiki page writer」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `wiki-qa` | 「wiki qa」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、代表的な操作手順、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `wiki-researcher` | 「wiki researcher」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `wiki-vitepress` | 「wiki vitepress」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、安全条件・禁止事項、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `windows-privilege-escalation` | 「windows privilege escalation」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `wireshark-analysis` | 「wireshark analysis」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `wordpress` | 「wordpress」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: personal / リスク: safe / 既存 UI 設定との整合確認が必要。 |
| `wordpress-penetration-testing` | 「wordpress penetration testing」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown |
| `wordpress-plugin-development` | 「wordpress plugin development」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: personal / リスク: safe |
| `wordpress-theme-development` | 「wordpress theme development」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: personal / リスク: safe / 既存 UI 設定との整合確認が必要。 |
| `wordpress-woocommerce-development` | 「wordpress woocommerce development」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: personal / リスク: safe |
| `workflow-automation` | 「workflow automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `workflow-orchestration-patterns` | 「workflow orchestration patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `workflow-patterns` | 「workflow patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、安全条件・禁止事項 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: community / リスク: unknown |
| `wrike-automation` | 「wrike automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `writer` | 「writer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: personal / リスク: safe / LibreOffice 前提。 |
| `writing-plans` | 「writing plans」 の実装、設計、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `writing-skills` | 「writing skills」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: unknown |
| `x-article-publisher-skill` | 「x article publisher skill」 の実装、設計、運用を支援するスキル。 | 本文では 設計方針、画面・構成要素の調整 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: https://github.com/wshuyi/x-article-publisher-skill / リスク: safe |
| `xlsx-official` | 「xlsx official」 の実装、接続設定、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown / LibreOffice 前提。 |
| `xss-html-injection` | 「xss html injection」 の検証、監査、リスク確認を支援するスキル。 | 本文では 導入・接続設定、実施フロー、代表的な操作手順、主要ツール/API 利用 を中心に扱う。 診断、監査、再現検証、改善方針の整理で使う。 | 出所: community / リスク: unknown / 認可済み環境での検証・教育用途に限定。 |
| `youtube-automation` | 「youtube automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `youtube-summarizer` | 「youtube summarizer」 の実装、設計、運用を支援するスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 関連領域の実装、設定、運用判断で使う。 | 出所: community / リスク: safe |
| `zapier-make-patterns` | 「zapier make patterns」 の設計方針と実践パターンを扱うスキル。 | 本文では 実施フロー、設計方針、主要ツール/API 利用、画面・構成要素の調整 を中心に扱う。 実装方針の選定、設計レビュー、ベストプラクティス整理で使う。 | 出所: vibeship-spawner-skills (Apache 2.0) / リスク: unknown |
| `zendesk-automation` | 「zendesk automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `zoho-crm-automation` | 「zoho crm automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `zoom-automation` | 「zoom automation」 の操作自動化と運用手順を扱うスキル。 | 本文では 導入・接続設定、実施フロー、設計方針、代表的な操作手順 を中心に扱う。 外部サービス連携や定型操作の自動化を進める場面で使う。 | 出所: community / リスク: unknown / Rube MCP 接続が前提。 / 認証方式や接続設定の前提あり。 |
| `zustand-store-ts` | 「zustand store ts」 の実装、接続設定、運用を支援するスキル。 | 本文では 実施フロー、設計方針、代表的な操作手順、評価・検証観点 を中心に扱う。 SDK 組み込み、接続設定、アプリ実装、保守運用で使う。 | 出所: community / リスク: unknown |

---

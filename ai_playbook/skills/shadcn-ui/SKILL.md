---
name: shadcn-ui
description: Use when integrating, installing, customizing, or reviewing shadcn/ui components in this repository. Covers component discovery, MCP-assisted lookup, safe installation flow, theming, composition, and accessibility-preserving customization.
metadata:
  short-description: Work with shadcn/ui safely
  triggers: shadcn, shadcn/ui, shadcn ui, component install, components.json, radix ui
risk: unknown
source: google-labs-code/stitch-skills (adapted for local policy)
---
<!-- LOCAL-SAFETY-OVERLAY:START -->
## Local Safety Overlay

- source_file: `skills/shadcn-ui/SKILL.md`
- local_flags: `shell-install-review`
- 外部送信は既定で禁止: workspace / repo / secrets / token / cookies / auth state を送信・アップロードしない
- 破壊的操作は既定で禁止: delete / reset / push / deploy / install はユーザーの明示承認がある場合だけ実行する
- 認証情報はローカル保持のみ: .env / secret / token / credential は表示・共有・保存先拡張をしない
<!-- LOCAL-SAFETY-OVERLAY:END -->

# shadcn/ui

shadcn/ui を使ったコンポーネント導入・カスタマイズ・レビューのための Skill です。  
MCP でのコンポーネント探索、`components.json` の確認、`npx shadcn@latest` による追加、テーマ調整、派生コンポーネント作成、アクセシビリティ維持を扱います。

## When to Use

- shadcn/ui コンポーネントを追加したいとき
- 既存の shadcn/ui コンポーネントをカスタマイズしたいとき
- `components.json` や registry 設定を確認したいとき
- Radix UI / Base UI ベースのコンポーネント構成を整理したいとき
- shadcn/ui 採用時のベストプラクティスを確認したいとき

## Do Not Use

- 単なる CSS 微調整だけで shadcn/ui の文脈が不要なとき
- 既存設計が Mantine / MUI / Chakra など別 UI 系に固定されているとき
- ユーザー承認なしに依存追加やインストールを進める必要があるとき

## Core Principles

- shadcn/ui はライブラリを「使う」のではなく、コンポーネントコードを自分のコードベースへ取り込む方式として扱う
- `components/ui/` は取得元、`components/` 側は派生や合成に使う
- Tailwind / theme 変数 / `cn()` / variant 設計を壊さずに拡張する
- アクセシビリティ属性、フォーカス管理、キーボード操作は削らない

## Safe Installation Rules

- `npx shadcn@latest init`
- `npx shadcn@latest add <component>`

上記のようなコマンドは依存追加やファイル生成を伴うため、**ユーザーの明示承認後のみ** 実行する。  
承認前に行うのは以下まで:

- `components.json` の存在確認
- 既存 UI 構成の確認
- 追加対象コンポーネントの候補整理
- 生成されるファイルと依存の説明

## Workflow

### 1. Discover Components

- MCP が使える場合は、component catalog / registry 情報を取得する
- 使いたいコンポーネントの props、依存、必要ファイルを確認する
- custom registry がある場合は `components.json` と registry 設定を先に確認する

### 2. Inspect Project Setup

- `components.json` の有無と内容を確認する
- Tailwind 設定、`cn()` ユーティリティ、alias、RSC 利用有無を確認する
- 既に `components/ui/` が存在するなら命名・配置規則を把握する

### 3. Propose the Change

- 追加するコンポーネント名
- 生成/更新されるファイル
- 追加される依存
- カスタマイズ方針

を先に説明し、インストール実行の承認を取る。

### 4. Install or Integrate

- 承認済みなら `npx shadcn@latest add <component>` で追加する
- 承認がない場合は手動統合案のみを提示する
- 生成されたコードは既存設計に合わせて最小限の修正に留める

### 5. Customize Safely

- variant は `class-variance-authority` と `cn()` を前提に維持する
- テーマ調整は CSS 変数、Tailwind token、`globals.css` 側を優先する
- 直接 `components/ui/` を大きく壊すより、派生コンポーネントで吸収できるかを先に検討する

### 6. Verify Accessibility

- ARIA 属性を削っていないか
- フォーカスリングが残っているか
- キーボード操作が破綻していないか
- disabled / loading 状態が適切か

を確認する。

## Common Patterns

### Component Discovery

- list components
- get metadata
- check demo/source
- compare direct install vs manual integration

### Project Files to Inspect

- `components.json`
- `components/ui/*`
- `lib/utils.ts`
- `app/globals.css` または theme 定義ファイル
- Tailwind 設定ファイル

### Customizing Strategy

- 既存 Button / Dialog / Form を直接壊さない
- 派生ラッパーで loading や business-specific UI を足す
- class 競合は `cn()` / `twMerge` 前提で処理する

## Notes

- shadcn/ui は Radix UI または Base UI を下層に使うが、導入済み構成に合わせる
- `Bash` 実行が必要でも、インストールや依存追加は必ず承認を取る
- registry 利用時は外部コード取り込みになるため、取得元確認を優先する

## Definition of Done

- 追加対象コンポーネントと影響範囲を説明できている
- 承認の要否が整理されている
- 追加後もテーマ、variant、アクセシビリティが破綻していない
- 必要なら manual integration 案と direct install 案の両方を説明できる

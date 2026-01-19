# 新規スキル・サブエージェント追加クイックガイド

> **このファイルは新規追加時のステップバイステップガイドです。**

---

## 🎯 スキルを追加する

### ステップ1: ディレクトリとファイルを作成

```powershell
# 新しいスキルディレクトリを作成
$skillName = "my-new-skill"
mkdir "D:\dev\00_repository_templates\ai_playbook\skills\$skillName"

# テンプレートをコピー
Copy-Item `
    "D:\dev\00_repository_templates\ai_playbook\templates\SKILL_TEMPLATE.md" `
    "D:\dev\00_repository_templates\ai_playbook\skills\$skillName\SKILL.md"
```

### ステップ2: SKILL.md を編集

```powershell
# エディタで開く
code "D:\dev\00_repository_templates\ai_playbook\skills\$skillName\SKILL.md"
```

**必須の編集箇所:**
- `name:` → スキルのID
- `description:` → 簡潔な説明
- `## 目的` → 何を達成するか
- `## 使い方` → 具体的な使用方法
- `## 出力形式` → 期待される出力

### ステップ3: config.psd1 に追加

```powershell
# tooling/config.psd1 を開く
code "D:\dev\00_repository_templates\ai_playbook\tooling\config.psd1"
```

**ExpectedSkills に追加:**
```powershell
ExpectedSkills = @(
    'phase-planning'
    'bug-investigation'
    'code-review'
    'worklog-update'
    'my-new-skill'       # ← 追加
)
```

### ステップ4: registry.yaml に追加（任意だが推奨）

```powershell
# meta/registry.yaml を開く
code "D:\dev\00_repository_templates\ai_playbook\meta\registry.yaml"
```

**skills セクションに追加:**
```yaml
skills:
  # ... 既存のスキル ...
  
  - id: my-new-skill
    version: "1.0.0"
    path: skills/my-new-skill/SKILL.md
    tags: [level/core, domain/custom, target/all]
    description: "スキルの説明"
```

### ステップ5: 再インストール・確認

```powershell
cd D:\dev\00_repository_templates\ai_playbook\tooling
.\install.ps1 -Mode extended
.\doctor.ps1 -Mode extended
```

---

## 🤖 サブエージェントを追加する

### ステップ1: レベルを決める

| レベル | 場所 | 説明 |
|--------|------|------|
| **minimal** | `subagents/minimal/` | 背骨（常に配布） |
| **extended** | `subagents/extended/` | 拡張（extended/catalog で配布） |
| **catalog** | `subagents/catalog/<category>/` | カテゴリ別（catalogで配布） |

### ステップ2: テンプレートをコピー

```powershell
# extended に追加する例
$agentName = "my-agent"
$level = "extended"

Copy-Item `
    "D:\dev\00_repository_templates\ai_playbook\templates\SUBAGENT_TEMPLATE.md" `
    "D:\dev\00_repository_templates\ai_playbook\subagents\$level\$agentName.md"
```

### ステップ3: エージェント定義を編集

```powershell
code "D:\dev\00_repository_templates\ai_playbook\subagents\$level\$agentName.md"
```

**必須の編集箇所:**
- `name:` → エージェントのID
- `description:` → 役割の説明
- `level:` → minimal / extended / catalog
- `## 役割` → 何をするか
- `## 呼び出しタイミング` → いつ使うか
- `## 出力形式` → 期待される出力

### ステップ4: config.psd1 に追加

```powershell
code "D:\dev\00_repository_templates\ai_playbook\tooling\config.psd1"
```

**レベルに応じて追加:**

```powershell
# minimal の場合
ExpectedAgentsMinimal = @(
    'planner.md'
    'implementer.md'
    'reviewer.md'
    'my-agent.md'        # ← 追加
)

# extended の場合
ExpectedAgentsExtended = @(
    'rapid-prototyper.md'
    'test-writer-fixer.md'
    'my-agent.md'        # ← 追加
)
```

### ステップ5: registry.yaml に追加（任意だが推奨）

```powershell
code "D:\dev\00_repository_templates\ai_playbook\meta\registry.yaml"
```

```yaml
subagents:
  extended:  # または minimal
    # ... 既存のエージェント ...
    
    - id: my-agent
      version: "1.0.0"
      path: subagents/extended/my-agent.md
      tags: [level/extended, role/custom, domain/engineering, target/claude]
      description: "エージェントの説明"
```

### ステップ6: 再インストール・確認

```powershell
cd D:\dev\00_repository_templates\ai_playbook\tooling
.\install.ps1 -Mode extended
.\doctor.ps1 -Mode extended

# 配布先を確認
Get-ChildItem "$env:USERPROFILE\.claude\agents" -Filter "*.md" | Select Name
```

---

## ✅ チェックリスト

### スキル追加

- [ ] `skills/<skill-name>/SKILL.md` を作成
- [ ] frontmatter（name, description, version）を記述
- [ ] 本文（目的, 使い方, 出力形式）を記述
- [ ] `config.psd1` の `ExpectedSkills` に追加
- [ ] `registry.yaml` に追加（推奨）
- [ ] `install.ps1` で再インストール
- [ ] `doctor.ps1` でPASS確認

### サブエージェント追加

- [ ] `subagents/<level>/<agent-name>.md` を作成
- [ ] frontmatter（name, description, version, level）を記述
- [ ] 本文（役割, 使うスキル, 出力形式）を記述
- [ ] `config.psd1` の該当レベルに追加
- [ ] `registry.yaml` に追加（推奨）
- [ ] `install.ps1 -Mode <level>` で再インストール
- [ ] `doctor.ps1 -Mode <level>` でPASS確認
- [ ] Claude Code で `@<agent-name>` が認識されるか確認

---

## 🔄 バージョン更新時

```powershell
# 1. playbook.yaml のバージョンを更新
# version: "0.5.0"

# 2. 必要なら registry.yaml の該当エントリを更新

# 3. 再インストール
.\install.ps1 -Mode extended

# 4. 確認
.\doctor.ps1 -Mode extended
```

---

## 🚨 トラブル時

```powershell
# doctor でエラーが出たら
.\install.ps1 -Mode extended
.\doctor.ps1 -Mode extended

# それでもダメなら junction を削除して再作成
cmd /c rmdir "$env:USERPROFILE\.claude\agents"
.\install.ps1 -Mode extended
```

# Worklog - ai_playbook refactor - 2026-01-20

## Change 1 - remove dead function + guard copy link info
- Files: ai_playbook/tooling/Common.ps1 (removed Test-SkillContent), ai_playbook/tooling/doctor.ps1 (Get-LinkStatus adds Target=null for copy/missing)
- Reason: remove unused code and avoid PropertyNotFoundException when copy fallback occurs
- Commands:
  - .\install.ps1 -Mode minimal
  - .\doctor.ps1 -Mode minimal
  - .\install.ps1 -Mode extended
  - .\doctor.ps1 -Mode extended
- Tests: PASS for minimal and extended; copy fallback observed due to junction failure in this environment

## Change 2 - quarantine generated compiled output
- Files moved: ai_playbook/_compiled -> ai_playbook/_quarantine/20260120_220944/_compiled
- Reason: generated output should not stay as source
- Commands:
  - .\install.ps1 -Mode minimal
  - .\doctor.ps1 -Mode minimal
  - .\install.ps1 -Mode extended
  - .\doctor.ps1 -Mode extended
- Tests: PASS for minimal and extended

## Next actions
- None

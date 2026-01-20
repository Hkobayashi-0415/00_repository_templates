# Worklog: ai_playbook manual (copy-based)
Date: 2026-01-20
Author: Codex

## Summary
- Added copy-based usage guidance to README.
- Verified doctor passes for minimal and extended.

## Changes
- Documented copy-first personal usage in `ai_playbook/README.md`.

## Commands
- Compare-Object (Get-Content -Raw ai_playbook/_quarantine/20260120_234736/backups/README.md.before) (Get-Content -Raw ai_playbook/README.md)
- cd ai_playbook/tooling; .\doctor.ps1 -Mode minimal
- cd ai_playbook/tooling; .\doctor.ps1 -Mode extended

## Tests
- doctor.ps1 -Mode minimal: PASS (23/23)
- doctor.ps1 -Mode extended: PASS (28/28)

## Decisions
- Keep junction behavior unchanged; document how to force copy via -UseCopy.

## Next actions
- None. Ready to use the copy-based flow.

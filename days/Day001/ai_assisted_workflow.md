# AI-Assisted DevOps Workflow

## Prompt pattern
- Role: what expertise is needed
- Context: sanitized system facts
- Task: one specific outcome
- Constraints: no secrets, read-only first, target versions
- Evidence: exact error, logs or plan excerpt
- Output: proposed hypotheses, validation and rollback

## Required validation
1. Verify every assumption.
2. Inspect generated commands for destructive behavior and variable expansion.
3. Run syntax checks, linters and tests.
4. Use dry-run, plan or sandbox modes where available.
5. Review the Git diff.
6. Record corrections.
7. Require human approval for privileged or production-impacting action.

## Day 001 exercise
Ask an approved AI assistant to review the sanitized baseline and identify three missing signals. Do not include account IDs, IP addresses, usernames beyond what is already public, keys, tokens or confidential company data. Accept suggestions only after verifying that each proposed command is read-only.

#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps"; mkdir -p evidence/day020; out=evidence/day020/remediation-decision-record.md
printf '%s\n' '# Day020 Remediation Decision' '## Decision' 'Use trusted evidence, applicability validation, effective-risk priority, authorized treatment, rescan and banking validation.' '## Treatment' 'Patch, mitigate, remove, isolate, replace, accept with expiry, or dispute with evidence.' '## Rollback' 'Use tested configuration, application, data, traffic or forward-fix recovery.' '## Banking Validation' 'Validate authentication, payments, idempotency, queues, database, ledger, fraud controls and audit.' | tee "$out"

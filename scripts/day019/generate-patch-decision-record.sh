#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps"; mkdir -p evidence/day019; out=evidence/day019/patch-decision-record.md
printf '%s\n' '# Day019 Patch Decision' '## Decision' 'Use trusted repositories, effective-risk triage, tests, canary rings, recovery, banking validation, and closure.' '## Rollback' 'Use tested image, snapshot, configuration, application, data, failover, or forward-fix recovery.' | tee "$out"
printf 'Wrote %s\n' "$out"

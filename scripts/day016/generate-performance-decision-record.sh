#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day016
cat > evidence/day016/performance-decision-record.md <<'EOF'
# 🏗️ Day016 Performance Architecture Decision

## Decision
Use an evidence-first USE-method workflow with host and banking SLO correlation before optimization or scaling.

## Rejected Alternative
Tuning kernel parameters or resizing infrastructure from a single high metric was rejected because it risks cost, instability, and false diagnosis.

## Validation
Compare representative before/after windows using load, saturation, errors, latency percentiles, throughput, cost, and transaction outcomes.

## Rollback
Every change requires a reversible configuration or deployment path, canary scope, and explicit abort threshold.

## Banking Control
Timed-out transactions require authoritative idempotency, queue, gateway, and ledger reconciliation before retry.
EOF
printf 'Wrote evidence/day016/performance-decision-record.md
'

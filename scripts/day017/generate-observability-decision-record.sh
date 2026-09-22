#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day017
cat > evidence/day017/observability-decision-record.md <<'EOF'
# 🏗️ Day017 Observability Architecture Decision

## Decision
Use structured UTC events, stable schemas, correlation identifiers, monitored forwarding queues, protected central retention, SLO-based detection, and banking reconciliation.

## Rejected Alternative
Local-only unstructured logs were rejected because host loss, inconsistent retention, weak search, poor access governance, and missing cross-service correlation increase incident risk.

## Validation
Use synthetic canary events, queue and destination health, source-to-index comparison, bounded searches, alert tests, and transaction-state validation.

## Rollback
Logging changes require reversible configuration, canary scope, volume safeguards, and service-safe rollback.

## Banking Control
A log outcome never replaces the authoritative gateway, database, idempotency, ledger, queue, and reconciliation state.
EOF
printf 'Wrote evidence/day017/observability-decision-record.md
'

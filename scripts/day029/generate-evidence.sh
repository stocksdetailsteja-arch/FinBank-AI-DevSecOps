#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)";mkdir -p evidence/day029
./scripts/day029/payment-intent-test.sh
printf '%s\n' '# Day029 Payment Intent API Contract' 'POST /payment-intents -> 201 CREATED' 'GET /payment-intents -> 200 list' 'GET /payment-intents/{intentId} -> 200 or 404' 'Invalid request -> 400' > evidence/day029/payment-intent-api-contract.md
{ echo '# Day029 Payment Intent Regression Report';./scripts/day023/smoke-test.sh;./scripts/day025/customer-service-test.sh;./scripts/day026/account-service-test.sh;./scripts/day027/transaction-service-test.sh;./scripts/day028/payment-service-test.sh;./scripts/day029/payment-intent-test.sh; } > evidence/day029/payment-intent-regression-report.md 2>&1
printf '%s\n' '# Day029 Payment Intent Architecture Review' 'HTTP Adapter -> PaymentIntentService -> account validation and in-memory intent store' 'Production gaps: durable ID, idempotency, authorization, persistence, ledger, events, fraud, settlement and reconciliation.' > evidence/day029/payment-intent-architecture-review.md
echo 'PASS: Day029 evidence generated'

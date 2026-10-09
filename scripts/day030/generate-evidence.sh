#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)";mkdir -p evidence/day030
./scripts/day030/payment-authorization-test.sh
printf '%s\n' '# Day030 Authorization API Contract' 'POST /payment-intents/{intentId}/authorize' 'CREATED -> 200 AUTHORIZED' 'Missing -> 404' 'Invalid state -> 409' > evidence/day030/authorization-api-contract.md
{ echo '# Day030 Authorization Regression Report';./scripts/day023/smoke-test.sh;./scripts/day025/customer-service-test.sh;./scripts/day026/account-service-test.sh;./scripts/day027/transaction-service-test.sh;./scripts/day028/payment-service-test.sh;./scripts/day030/payment-authorization-test.sh; } > evidence/day030/authorization-regression-report.md 2>&1
printf '%s\n' '# Day030 Authorization Architecture Review' 'HTTP Adapter -> PaymentAuthorizationService -> PaymentIntentService' 'Production gaps: persistent state, actor, ownership, limits, fraud, sanctions, optimistic locking, audit and ledger command.' > evidence/day030/authorization-architecture-review.md
echo 'PASS: Day030 evidence generated'

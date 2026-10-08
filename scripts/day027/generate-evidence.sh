#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)";mkdir -p evidence/day027
./scripts/day027/transaction-service-test.sh
printf '%s\n' '# Day027 Transaction API Contract' 'GET /transactions -> 200 collection' 'GET /transactions/{transactionId} -> 200 transaction' 'Unknown transaction -> 404' 'Error body -> Transaction Not Found' > evidence/day027/transaction-api-contract.md
{ echo '# Day027 Transaction Regression Report';./scripts/day023/smoke-test.sh;./scripts/day025/customer-service-test.sh;./scripts/day026/account-service-test.sh;./scripts/day027/transaction-service-test.sh; } > evidence/day027/transaction-regression-report.md 2>&1
printf '%s\n' '# Day027 Transaction Architecture Review' 'HTTP Adapter -> TransactionService -> InMemoryRepository -> Transaction and Money' 'Day120 path: Spring Boot, PostgreSQL, double-entry ledger, idempotency, events, fraud controls and reconciliation.' > evidence/day027/transaction-architecture-review.md
echo 'PASS: Day027 evidence generated'

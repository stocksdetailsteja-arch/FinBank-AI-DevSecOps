#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)";mkdir -p evidence/day026
./scripts/day026/account-service-test.sh
printf '%s\n' '# Day026 Account API Contract' 'GET /accounts -> 200 collection' 'GET /accounts/{accountId} -> 200 account' 'Unknown account -> 404' 'Error body -> Account Not Found' > evidence/day026/account-api-contract.md
{ echo '# Day026 Account Regression Report';./scripts/day023/smoke-test.sh;./scripts/day025/customer-service-test.sh;./scripts/day026/account-service-test.sh; } > evidence/day026/account-regression-report.md 2>&1
printf '%s\n' '# Day026 Account Architecture Review' 'HTTP Adapter -> AccountService -> InMemoryRepository -> Account and Money' 'Day120 path: Spring Boot, PostgreSQL, ledger integration, authorization and audit.' > evidence/day026/account-architecture-review.md
echo 'PASS: Day026 evidence generated'

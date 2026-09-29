#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)";mkdir -p evidence/day025
./scripts/day025/customer-service-test.sh
{
 echo '# Day025 Customer API Contract'; echo; echo 'GET /customers -> 200 collection'; echo 'GET /customers/{customerId} -> 200 customer'; echo 'Unknown customer -> 404'; echo 'Error body -> Customer Not Found';
} > evidence/day025/customer-api-contract.md
{
 echo '# Day025 Customer Regression Report'; echo; ./scripts/day023/smoke-test.sh; echo; ./scripts/day025/customer-service-test.sh;
} > evidence/day025/customer-regression-report.md 2>&1
{
 echo '# Day025 Customer Architecture Review'; echo; echo 'HTTP Adapter -> CustomerService -> InMemoryRepository -> Customer'; echo 'Day120 path: Spring Boot, DTO validation, PostgreSQL, authorization and audit.';
} > evidence/day025/customer-architecture-review.md
printf 'PASS: Day025 evidence generated\n'

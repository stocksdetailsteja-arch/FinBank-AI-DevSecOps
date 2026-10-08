#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)";mkdir -p evidence/day028
./scripts/day028/payment-service-test.sh
printf '%s\n' '# Day028 Payment API Contract' 'GET /payments/quote?amountMinor={value}' 'Positive integer -> 200 quote' 'Zero, negative or invalid -> 400' 'Currency -> INR' > evidence/day028/payment-api-contract.md
{ echo '# Day028 Payment Regression Report';./scripts/day023/smoke-test.sh;./scripts/day025/customer-service-test.sh;./scripts/day026/account-service-test.sh;./scripts/day027/transaction-service-test.sh;./scripts/day028/payment-service-test.sh; } > evidence/day028/payment-regression-report.md 2>&1
printf '%s\n' '# Day028 Payment Architecture Review' 'HTTP Adapter -> PaymentService -> PaymentQuote' 'Day120 path: payment intent, authorization, ledger posting, events, fraud, settlement and reconciliation.' > evidence/day028/payment-architecture-review.md
echo 'PASS: Day028 evidence generated'

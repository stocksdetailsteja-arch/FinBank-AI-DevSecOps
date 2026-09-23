#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps";base=${1:-http://127.0.0.1:8080};mkdir -p evidence/day023
fetch(){ local path=$1 marker=$2; local out; if ! out=$(curl -fsS --connect-timeout 2 "$base$path");then echo "Endpoint unavailable: $base$path";exit 69;fi;grep -q "$marker" <<<"$out" || { echo "Missing marker $marker for $path";exit 70; };printf '%s\n' "$out"; }
{ echo '# Day023 Smoke Test Report'; echo '## Health';fetch /health 'Day023';echo '## Architecture';fetch /architecture 'Day120';echo '## Customers';fetch /customers 'CUS-1001';echo '## Accounts';fetch /accounts 'ACC-2001';echo '## Transactions';fetch /transactions 'TXN-3001';echo '## Payment Quote';fetch '/payments/quote?amountMinor=10000' 'feeMinor';echo '## Result';echo 'PASS'; } | tee evidence/day023/smoke-test-report.md

#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
base=${1:-http://127.0.0.1:8080};mkdir -p evidence/day028
request(){ local query=$1 expected=$2 marker=$3 body status;body=$(mktemp);if ! status=$(curl -sS --connect-timeout 2 -o "$body" -w '%{http_code}' "$base/payments/quote?amountMinor=$query");then rm -f "$body";echo "Endpoint unavailable: $base/payments/quote";return 69;fi;test "$status" = "$expected" || { rm -f "$body";return 70; };grep -q "$marker" "$body" || { rm -f "$body";return 71; };printf 'PASS: amountMinor=%s -> HTTP %s -> %s\n' "$query" "$status" "$marker";cat "$body";echo;rm -f "$body";}
{
 echo '# Day028 Payment Service Validation';echo
 request 10000 200 '"feeMinor":100'
 request 1 200 '"feeMinor":100'
 request 100000 200 '"feeMinor":500'
 request 0 400 'positive integer'
 request invalid 400 'positive integer'
 echo 'PASS: Payment service feature tests'
} | tee evidence/day028/payment-service-validation.md

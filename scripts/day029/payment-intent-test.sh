#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
base=${1:-http://127.0.0.1:8080};mkdir -p evidence/day029
call(){ local method=$1 url=$2 expected=$3 marker=$4 body status;body=$(mktemp);if ! status=$(curl -sS --connect-timeout 2 -X "$method" -o "$body" -w '%{http_code}' "$base$url");then rm -f "$body";echo "Endpoint unavailable: $base$url";return 69;fi;test "$status" = "$expected" || { cat "$body";rm -f "$body";return 70; };grep -q "$marker" "$body" || { cat "$body";rm -f "$body";return 71; };printf 'PASS: %s %s -> HTTP %s -> %s\n' "$method" "$url" "$status" "$marker";cat "$body";echo;rm -f "$body";}
{
 echo '# Day029 Payment Intent Validation';echo
 call POST '/payment-intents?sourceAccountId=ACC-2001&destinationAccountId=ACC-2002&amountMinor=10000' 201 '"status":"CREATED"'
 call GET /payment-intents/PAY-4001 200 'PAY-4001'
 call GET /payment-intents 200 'PAY-4001'
 call GET /payment-intents/PAY-9999 404 'Payment Intent Not Found'
 call POST '/payment-intents?sourceAccountId=ACC-2001&destinationAccountId=ACC-2001&amountMinor=10000' 400 'source and destination must differ'
 echo 'PASS: Payment intent feature tests'
} | tee evidence/day029/payment-intent-validation.md

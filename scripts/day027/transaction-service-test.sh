#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
base=${1:-http://127.0.0.1:8080};mkdir -p evidence/day027
request(){ local path=$1 expected=$2 marker=$3 body status;body=$(mktemp);if ! status=$(curl -sS --connect-timeout 2 -o "$body" -w '%{http_code}' "$base$path");then rm -f "$body";echo "Endpoint unavailable: $base$path";return 69;fi;test "$status" = "$expected" || { rm -f "$body";return 70; };grep -q "$marker" "$body" || { rm -f "$body";return 71; };printf 'PASS: %s -> HTTP %s -> %s\n' "$path" "$status" "$marker";cat "$body";echo;rm -f "$body";}
{
 echo '# Day027 Transaction Service Validation';echo
 request /transactions 200 TXN-3001
 request /transactions/TXN-3001 200 CREDIT
 request /transactions/TXN-3002 200 DEBIT
 request /transactions/TXN-9999 404 'Transaction Not Found'
 echo 'PASS: Transaction service feature tests'
} | tee evidence/day027/transaction-service-validation.md

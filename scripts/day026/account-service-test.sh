#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
base=${1:-http://127.0.0.1:8080};mkdir -p evidence/day026
request(){ local path=$1 status_expected=$2 marker=$3 body status;body=$(mktemp);if ! status=$(curl -sS --connect-timeout 2 -o "$body" -w '%{http_code}' "$base$path");then rm -f "$body";echo "Endpoint unavailable: $base$path";return 69;fi;test "$status" = "$status_expected" || { rm -f "$body";return 70; };grep -q "$marker" "$body" || { rm -f "$body";return 71; };printf 'PASS: %s -> HTTP %s -> %s\n' "$path" "$status" "$marker";cat "$body";echo;rm -f "$body";}
{
 echo '# Day026 Account Service Validation';echo
 request /accounts 200 ACC-2001
 request /accounts/ACC-2001 200 SAVINGS
 request /accounts/ACC-2002 200 CURRENT
 request /accounts/ACC-9999 404 'Account Not Found'
 echo 'PASS: Account service feature tests'
} | tee evidence/day026/account-service-validation.md

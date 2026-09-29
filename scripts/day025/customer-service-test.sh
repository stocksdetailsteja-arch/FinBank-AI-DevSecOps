#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
base=${1:-http://127.0.0.1:8080}
mkdir -p evidence/day025
request(){
 local path=$1 expected_status=$2 marker=$3 body status
 body=$(mktemp); trap 'rm -f "$body"' RETURN
 if ! status=$(curl -sS --connect-timeout 2 -o "$body" -w '%{http_code}' "$base$path"); then
  echo "Endpoint unavailable: $base$path"; return 69
 fi
 test "$status" = "$expected_status" || { echo "Unexpected status $status for $path"; return 70; }
 grep -q "$marker" "$body" || { echo "Missing marker $marker for $path"; return 71; }
 printf 'PASS: %s -> HTTP %s -> %s\n' "$path" "$status" "$marker"
 cat "$body"; echo
}
{
 echo '# Day025 Customer Service Validation'
 echo
 request /customers 200 'CUS-1001'
 request /customers/CUS-1001 200 'Asha Rao'
 request /customers/CUS-1002 200 'Ravi Iyer'
 request /customers/CUS-9999 404 'Customer Not Found'
 echo 'PASS: Customer service feature tests'
} | tee evidence/day025/customer-service-validation.md

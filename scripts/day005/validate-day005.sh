#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
fail=0
pass(){ printf 'PASS: %s
' "$1"; }
fail_check(){ printf 'FAIL: %s
' "$1"; fail=1; }
expect(){ local label="$1"; shift; if "$@"; then pass "$label"; else fail_check "$label"; fi; }
expect 'FinBank repository root' test "$(git rev-parse --show-toplevel)" = "$repo"
expect 'FinBank origin remote' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004; do expect "$d preserved" test -d "days/$d"; done
expect '17 Day005 premium documents' test "$(find days/Day005 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
expect 'Network baseline generated' test -f evidence/day005/network-baseline.md
expect 'Health file exists' test -f labs/day005/site/health.txt
expect 'Health content valid' grep -qx 'FINBANK_DAY005_OK' labs/day005/site/health.txt
if [[ -f labs/day005/http.pid ]] && kill -0 "$(cat labs/day005/http.pid)" 2>/dev/null; then fail_check 'No Day005 HTTP process remains'; else pass 'No Day005 HTTP process remains'; fi
if ss -lnt | grep -q '127.0.0.1:18080'; then fail_check 'No Day005 listener remains'; else pass 'No Day005 listener remains'; fi
if grep -RInE 'AKIA[0-9A-Z]{16}|BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer' days/Day005 labs/day005 evidence/day005; then fail_check 'No high-confidence secret pattern'; else pass 'No high-confidence secret pattern'; fi
exit "$fail"

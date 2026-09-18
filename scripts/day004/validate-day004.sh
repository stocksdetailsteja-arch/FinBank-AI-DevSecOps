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
expect 'Day001 preserved' test -d days/Day001
expect 'Day002 preserved' test -d days/Day002
expect 'Day003 preserved' test -d days/Day003
expect '17 Day004 premium documents' test "$(find days/Day004 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
expect 'Process baseline generated' test -f evidence/day004/process-monitoring-baseline.md
if [[ -f labs/day004/cpu-workload.pid ]] && kill -0 "$(cat labs/day004/cpu-workload.pid)" 2>/dev/null; then fail_check 'No Day004 workload remains'; else pass 'No Day004 workload remains'; fi
if pgrep -af finbank-day004-cpu | grep -v 'pgrep -af' >/dev/null; then fail_check 'No named Day004 process remains'; else pass 'No named Day004 process remains'; fi
if grep -RInE 'AKIA[0-9A-Z]{16}|BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY' days/Day004 labs/day004 evidence/day004; then fail_check 'No high-confidence secret pattern'; else pass 'No high-confidence secret pattern'; fi
exit "$fail"

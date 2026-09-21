#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; fail=0
pass(){ printf 'PASS: %s
' "$1"; }; bad(){ printf 'FAIL: %s
' "$1"; fail=1; }
check(){ local label="$1"; shift; if "$@"; then pass "$label"; else bad "$label"; fi; }
check 'FinBank root' test "$(git rev-parse --show-toplevel)" = "$repo"
check 'FinBank origin' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007; do check "$d preserved" test -d "days/$d"; done
check '17 Day008 documents' test "$(find days/Day008 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
check 'Logging baseline generated' test -f evidence/day008/logging-baseline.md
check 'Synthetic events generated' test -f evidence/day008/synthetic-events.txt
check 'Synthetic analysis generated' test -f evidence/day008/synthetic-log-analysis.md
check 'Correlation ID generated' test -s labs/day008/correlation-id.txt
for event in payment_health dependency_latency payment_demo_failure; do check "Event $event present" grep -q "event=$event" evidence/day008/synthetic-events.txt; done
if grep -RInE 'AKIA[0-9A-Z]{16}|BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer|password=' days/Day008 labs/day008 evidence/day008; then bad 'No high-confidence secret pattern'; else pass 'No high-confidence secret pattern'; fi
exit "$fail"

#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; fail=0
pass(){ printf 'PASS: %s
' "$1"; }; bad(){ printf 'FAIL: %s
' "$1"; fail=1; }; check(){ local l=$1; shift; if "$@"; then pass "$l"; else bad "$l"; fi; }
check 'FinBank root' test "$(git rev-parse --show-toplevel)" = "$repo"
check 'FinBank origin' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008 Day009; do check "$d preserved" test -d "days/$d"; done
check '17 Day010 documents' test "$(find days/Day010 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
for s in scripts/day010/*.sh; do check "Syntax $(basename "$s")" bash -n "$s"; done
check 'Schedule evidence' test -s evidence/day010/schedule-validation.md
check 'Report evidence' test -s evidence/day010/scheduled-report.md
check 'Run ledger evidence' test -s evidence/day010/batch-run-ledger.md
check 'Synthetic input' test -s labs/day010/synthetic-transactions.csv
check 'No lock remains' test ! -e labs/day010/day010.lock
if grep -RInE 'AKIA[0-9A-Z]{16}|BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer|password=' days/Day010 labs/day010 evidence/day010; then bad 'No secret pattern'; else pass 'No secret pattern'; fi
exit "$fail"

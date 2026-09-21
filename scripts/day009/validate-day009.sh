#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; fail=0
pass(){ printf 'PASS: %s
' "$1"; }; bad(){ printf 'FAIL: %s
' "$1"; fail=1; }; check(){ local l=$1; shift; if "$@"; then pass "$l"; else bad "$l"; fi; }
check 'FinBank root' test "$(git rev-parse --show-toplevel)" = "$repo"
check 'FinBank origin' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008; do check "$d preserved" test -d "days/$d"; done
check '17 Day009 documents' test "$(find days/Day009 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
for s in scripts/day009/*.sh; do check "Syntax $(basename "$s")" bash -n "$s"; done
check 'Manifest evidence' test -s evidence/day009/backup-manifest.txt
check 'Service report' test -s evidence/day009/service-health-report.md
check 'Parser report' test -s evidence/day009/log-parser-report.md
check 'Synthetic log exists' test -s labs/day009/synthetic-app.log
if grep -RInE 'AKIA[0-9A-Z]{16}|BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer|password=' days/Day009 labs/day009 evidence/day009; then bad 'No secret pattern'; else pass 'No secret pattern'; fi
exit "$fail"

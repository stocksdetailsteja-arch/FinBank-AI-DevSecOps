#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; fail=0
pass(){ printf 'PASS: %s
' "$1"; }; bad(){ printf 'FAIL: %s
' "$1"; fail=1; }; check(){ local l=$1; shift; if "$@"; then pass "$l"; else bad "$l"; fi; }
check 'FinBank root' test "$(git rev-parse --show-toplevel)" = "$repo"
check 'FinBank origin' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008 Day009 Day010 Day011 Day012; do check "$d preserved" test -d "days/$d"; done
check '17 Day013 documents' test "$(find days/Day013 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
for s in scripts/day013/*.sh; do check "Syntax $(basename "$s")" bash -n "$s"; done
check 'Login report' test -s evidence/day013/login-event-review.md
check 'Security report' test -s evidence/day013/security-event-review.md
check 'Incident timeline' test -s evidence/day013/incident-timeline.md
check 'Evidence hashes' test -s evidence/day013/evidence-hashes.txt
check 'Synthetic input' test -s labs/day013/synthetic-security.log
if grep -RInE 'BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer|password=' days/Day013 labs/day013 evidence/day013; then bad 'No secret pattern'; else pass 'No secret pattern'; fi
exit "$fail"

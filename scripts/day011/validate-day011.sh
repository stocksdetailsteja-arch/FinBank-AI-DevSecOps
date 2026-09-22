#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; fail=0
pass(){ printf 'PASS: %s
' "$1"; }; bad(){ printf 'FAIL: %s
' "$1"; fail=1; }; check(){ local l=$1; shift; if "$@"; then pass "$l"; else bad "$l"; fi; }
check 'FinBank root' test "$(git rev-parse --show-toplevel)" = "$repo"
check 'FinBank origin' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008 Day009 Day010; do check "$d preserved" test -d "days/$d"; done
check '17 Day011 documents' test "$(find days/Day011 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
for s in scripts/day011/*.sh; do check "Syntax $(basename "$s")" bash -n "$s"; done
check 'Admin baseline generated' test -s evidence/day011/admin-baseline.md
check 'Sudo review generated' test -s evidence/day011/sudo-access-review.md
check 'Resource report generated' test -s evidence/day011/resource-governance.md
if grep -RInE 'BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer|password=' days/Day011 labs/day011 evidence/day011; then bad 'No secret pattern'; else pass 'No secret pattern'; fi
exit "$fail"

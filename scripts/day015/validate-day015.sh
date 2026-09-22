#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; fail=0
pass(){ printf 'PASS: %s
' "$1"; }; bad(){ printf 'FAIL: %s
' "$1"; fail=1; }; check(){ local l=$1; shift; if "$@"; then pass "$l"; else bad "$l"; fi; }
check 'FinBank root' test "$(git rev-parse --show-toplevel)" = "$repo"
check 'FinBank origin' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008 Day009 Day010 Day011 Day012 Day013 Day014; do check "$d preserved" test -d "days/$d"; done
check '17 Day015 documents' test "$(find days/Day015 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
for s in scripts/day015/*.sh; do check "Syntax $(basename "$s")" bash -n "$s"; done
for f in storage-inventory.md capacity-risk-report.md storage-governance-review.md storage-decision-record.md; do check "Evidence $f" test -s "evidence/day015/$f"; done
if grep -RInE '<br>|&lt;|&gt;|BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer|password=' days/Day015 evidence/day015; then bad 'No formatting or secret artifacts'; else pass 'No formatting or secret artifacts'; fi
if grep -RInE '^[-*] (Date|Branch|Engineer|Run ID|Result):[[:space:]]*$' days/Day015/lab_notes.md; then bad 'Lab notes fully populated'; else pass 'Lab notes fully populated'; fi
exit "$fail"

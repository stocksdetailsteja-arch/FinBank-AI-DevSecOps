#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; fail=0
pass(){ printf 'PASS: %s
' "$1"; }; bad(){ printf 'FAIL: %s
' "$1"; fail=1; }; check(){ local l=$1; shift; if "$@"; then pass "$l"; else bad "$l"; fi; }
check 'FinBank root' test "$(git rev-parse --show-toplevel)" = "$repo"
check 'FinBank origin' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008 Day009 Day010 Day011 Day012 Day013 Day014 Day015; do check "$d preserved" test -d "days/$d"; done
check '17 Day016 documents' test "$(find days/Day016 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
for s in scripts/day016/*.sh; do check "Syntax $(basename "$s")" bash -n "$s"; done
for f in performance-baseline.md performance-risk-report.md bounded-cpu-test.md performance-decision-record.md; do check "Evidence $f" test -s "evidence/day016/$f"; done
check 'No background CPU test' test -z "$(pgrep -f 'awk BEGIN.*3000000' || true)"
if grep -RInE '<br>|&lt;|&gt;|<([[:space:]]*)?(div|ul|li|em|strong)([[:space:]>])|BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer|password=' days/Day016 evidence/day016; then bad 'No formatting or secret artifacts'; else pass 'No formatting or secret artifacts'; fi
if grep -RInE '^[-*] (Date|Branch|Engineer|Run ID|Result):[[:space:]]*$' days/Day016/lab_notes.md; then bad 'Lab notes fully populated'; else pass 'Lab notes fully populated'; fi
exit "$fail"

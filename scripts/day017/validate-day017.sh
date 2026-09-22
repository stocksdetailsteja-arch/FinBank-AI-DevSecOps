#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; fail=0
pass(){ printf 'PASS: %s
' "$1"; }; bad(){ printf 'FAIL: %s
' "$1"; fail=1; }; check(){ local l=$1; shift; if "$@"; then pass "$l"; else bad "$l"; fi; }
check 'FinBank root' test "$(git rev-parse --show-toplevel)" = "$repo"
check 'FinBank origin' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008 Day009 Day010 Day011 Day012 Day013 Day014 Day015 Day016; do check "$d preserved" test -d "days/$d"; done
check '17 Day017 documents' test "$(find days/Day017 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
for s in scripts/day017/*.sh; do check "Syntax $(basename "$s")" bash -n "$s"; done
for f in observability-baseline.md log-governance-review.md incident-timeline.md observability-decision-record.md; do check "Evidence $f" test -s "evidence/day017/$f"; done
check 'Synthetic log' test -s labs/day017/synthetic-observability.log
check 'Summary depth' test "$(wc -w < days/Day017/summary.md)" -ge 700
if grep -RInE '<br>|&lt;|&gt;|<([[:space:]]*)?(div|ul|li|em|strong)([[:space:]>])|BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer|password=' days/Day017 evidence/day017 labs/day017; then bad 'No formatting or secret artifacts'; else pass 'No formatting or secret artifacts'; fi
if grep -RInE '^[-*] (Date|Branch|Engineer|Run ID|Result):[[:space:]]*$' days/Day017/lab_notes.md; then bad 'Lab notes fully populated'; else pass 'Lab notes fully populated'; fi
exit "$fail"

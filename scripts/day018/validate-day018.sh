#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; fail=0
pass(){ printf 'PASS: %s
' "$1"; }; bad(){ printf 'FAIL: %s
' "$1"; fail=1; }; check(){ local l=$1; shift; if "$@"; then pass "$l"; else bad "$l"; fi; }
check 'FinBank root' test "$(git rev-parse --show-toplevel)" = "$repo"
check 'FinBank origin' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008 Day009 Day010 Day011 Day012 Day013 Day014 Day015 Day016 Day017; do check "$d preserved" test -d "days/$d"; done
check '17 Day018 documents' test "$(find days/Day018 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
for s in scripts/day018/*.sh; do check "Syntax $(basename "$s")" bash -n "$s"; done
for f in identity-security-baseline.md privilege-ssh-review.md file-security-review.md security-decision-record.md; do check "Evidence $f" test -s "evidence/day018/$f"; done
check 'Security fixture mode 600' test "$(stat -c %a labs/day018/security-demo.txt 2>/dev/null || echo missing)" = 600
check 'Summary depth' test "$(wc -w < days/Day018/summary.md)" -ge 800
if grep -RInE '<br>|&lt;|&gt;|<([[:space:]]*)?(div|ul|li|em|strong)([[:space:]>])|BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer|password=' days/Day018 evidence/day018 labs/day018; then bad 'No formatting or secret artifacts'; else pass 'No formatting or secret artifacts'; fi
if grep -RInE '^[-*] (Date|Branch|Engineer|Run ID|Result):[[:space:]]*$' days/Day018/lab_notes.md; then bad 'Lab notes fully populated'; else pass 'Lab notes fully populated'; fi
if find evidence labs projects screenshots -type f -name '*.zip' 2>/dev/null | grep -q .; then bad 'No misplaced ZIP files'; else pass 'No misplaced ZIP files'; fi
exit "$fail"

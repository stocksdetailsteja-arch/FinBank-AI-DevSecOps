#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; fail=0
pass(){ printf 'PASS: %s
' "$1"; }; bad(){ printf 'FAIL: %s
' "$1"; fail=1; }; check(){ local l=$1; shift; if "$@"; then pass "$l"; else bad "$l"; fi; }
check 'FinBank root' test "$(git rev-parse --show-toplevel)" = "$repo"
check 'FinBank origin' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008 Day009 Day010 Day011; do check "$d preserved" test -d "days/$d"; done
check '17 Day012 documents' test "$(find days/Day012 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
for s in scripts/day012/*.sh; do check "Syntax $(basename "$s")" bash -n "$s"; done
check 'SSH report' test -s evidence/day012/ssh-security-review.md
check 'Filesystem report' test -s evidence/day012/filesystem-security-review.md
check 'Exposure report' test -s evidence/day012/host-exposure-review.md
check 'Synthetic risky file cleaned' test "$(stat -c %a labs/day012/world-writable-demo.txt 2>/dev/null || echo missing)" = 600
if grep -RInE 'BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer|password=' days/Day012 labs/day012 evidence/day012; then bad 'No secret pattern'; else pass 'No secret pattern'; fi
exit "$fail"

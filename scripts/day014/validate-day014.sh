#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; fail=0
pass(){ printf 'PASS: %s
' "$1"; }; bad(){ printf 'FAIL: %s
' "$1"; fail=1; }; check(){ local l=$1; shift; if "$@"; then pass "$l"; else bad "$l"; fi; }
check 'FinBank root' test "$(git rev-parse --show-toplevel)" = "$repo"
check 'FinBank origin' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005 Day006 Day007 Day008 Day009 Day010 Day011 Day012 Day013; do check "$d preserved" test -d "days/$d"; done
check '17 Day014 documents' test "$(find days/Day014 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
for s in scripts/day014/*.sh; do check "Syntax $(basename "$s")" bash -n "$s"; done
for f in backup-manifest.md integrity-report.md restore-validation.md corruption-test.md; do check "Evidence $f" test -s "evidence/day014/$f"; done
check 'Three source files' test "$(find labs/day014/source -maxdepth 1 -type f | wc -l)" -eq 3
check 'Restore equals source' diff -qr labs/day014/source labs/day014/restore
check 'No corrupted copy remains' test ! -e labs/day014/backup/corrupted-test-copy.tar.gz
if grep -RInE 'BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer|password=' days/Day014 labs/day014 evidence/day014; then bad 'No secret pattern'; else pass 'No secret pattern'; fi
if find evidence labs projects screenshots -type f -name '*.zip' 2>/dev/null | grep -q .; then bad 'No misplaced ZIP files'; else pass 'No misplaced ZIP files'; fi
exit "$fail"

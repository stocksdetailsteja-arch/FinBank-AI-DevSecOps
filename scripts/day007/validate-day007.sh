#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; fail=0
pass(){ printf 'PASS: %s
' "$1"; }; bad(){ printf 'FAIL: %s
' "$1"; fail=1; }
check(){ local x="$1"; shift; if "$@"; then pass "$x"; else bad "$x"; fi; }
check 'FinBank root' test "$(git rev-parse --show-toplevel)" = "$repo"
check 'FinBank origin' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005 Day006; do check "$d preserved" test -d "days/$d"; done
check '17 Day007 documents' test "$(find days/Day007 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
check 'systemd baseline generated' test -f evidence/day007/systemd-baseline.md
if systemctl --user is-active --quiet finbank-day007-demo.service; then bad 'Demo service inactive'; else pass 'Demo service inactive'; fi
if pgrep -af 'sleep 300' | grep -v pgrep | grep -q .; then bad 'No demo sleep process'; else pass 'No demo sleep process'; fi
if grep -RInE 'AKIA[0-9A-Z]{16}|BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer' days/Day007 labs/day007 evidence/day007; then bad 'No secret pattern'; else pass 'No secret pattern'; fi
exit "$fail"

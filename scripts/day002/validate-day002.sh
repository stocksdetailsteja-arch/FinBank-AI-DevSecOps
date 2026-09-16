#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
fail=0
check() { if "$@"; then printf '✅ PASS: %s
' "$*"; else printf '❌ FAIL: %s
' "$*"; fail=1; fi; }
check test "$(git rev-parse --show-toplevel)" = "$repo"
check test "$(git remote get-url origin)" = "git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git"
check test -f labs/day002/config/app.conf
check test -f labs/day002/data/synthetic-transactions.csv
check test -f evidence/day002/linux-filesystem-inventory.md
check test "$(find days/Day002 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
inode_a=$(stat -c '%i' labs/day002/data/synthetic-transactions.csv)
inode_b=$(stat -c '%i' labs/day002/links/transactions.hard)
check test "$inode_a" = "$inode_b"
check test "$(readlink -f labs/day002/links/transactions.symbolic)" = "$repo/labs/day002/data/synthetic-transactions.csv"
if grep -RInE 'AKIA[0-9A-Z]{16}|BEGIN (RSA |OPENSSH )?PRIVATE KEY' days/Day002 labs/day002 evidence/day002; then
  printf '❌ FAIL: secret-like material detected
'; fail=1
else
  printf '✅ PASS: no high-confidence secret pattern detected
'
fi
exit "$fail"

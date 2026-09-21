#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
fail=0
pass(){ printf 'PASS: %s
' "$1"; }
fail_check(){ printf 'FAIL: %s
' "$1"; fail=1; }
expect(){ local label="$1"; shift; if "$@"; then pass "$label"; else fail_check "$label"; fi; }
expect 'FinBank repository root' test "$(git rev-parse --show-toplevel)" = "$repo"
expect 'FinBank origin remote' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
for d in Day001 Day002 Day003 Day004 Day005; do expect "$d preserved" test -d "days/$d"; done
expect '17 Day006 premium documents' test "$(find days/Day006 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
expect 'Package inventory generated' test -f evidence/day006/package-inventory.md
expect 'Patch simulation generated' test -f evidence/day006/patch-simulation.md
expect 'Integrity review generated' test -f evidence/day006/package-integrity.md
if grep -RInE 'AKIA[0-9A-Z]{16}|BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|Authorization:[[:space:]]*Bearer' days/Day006 labs/day006 evidence/day006; then fail_check 'No high-confidence secret pattern'; else pass 'No high-confidence secret pattern'; fi
if grep -RInE '(^|[[:space:]])(sudo[[:space:]]+)?apt(-get)?[[:space:]]+(install|upgrade|full-upgrade|remove|purge|autoremove)([[:space:]]|$)' evidence/day006; then fail_check 'Evidence contains no executed mutation command'; else pass 'Evidence contains no executed mutation command'; fi
exit "$fail"

#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
fail=0
pass(){ printf '✅ PASS: %s
' "$1"; }
fail_check(){ printf '❌ FAIL: %s
' "$1"; fail=1; }
expect(){ local label="$1"; shift; if "$@"; then pass "$label"; else fail_check "$label"; fi; }
expect 'FinBank repository root' test "$(git rev-parse --show-toplevel)" = "$repo"
expect 'FinBank origin remote' test "$(git remote get-url origin)" = 'git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git'
expect 'Day001 preserved' test -d days/Day001
expect 'Day002 preserved' test -d days/Day002
expect '17 Day003 premium documents' test "$(find days/Day003 -maxdepth 1 -type f -name '*.md' | wc -l)" -eq 17
expect 'Private profile exists' test -f labs/day003/private/profile.txt
expect 'Private file mode 600' test "$(stat -c '%a' labs/day003/private/profile.txt)" = '600'
expect 'Private directory mode 700' test "$(stat -c '%a' labs/day003/private)" = '700'
expect 'Collaboration SGID mode 2770' test "$(stat -c '%a' labs/day003/collaboration)" = '2770'
expect 'Shared drop sticky mode 1770' test "$(stat -c '%a' labs/day003/shared-drop)" = '1770'
expect 'Recovered denied file mode 600' test "$(stat -c '%a' labs/day003/private/denied.txt)" = '600'
expect 'Identity audit generated' test -f evidence/day003/linux-identity-audit.md
if find labs/day003 -xdev -type f -perm -0002 -print -quit | grep -q .; then fail_check 'No world-writable regular lab file'; else pass 'No world-writable regular lab file'; fi
if grep -RInE 'AKIA[0-9A-Z]{16}|BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY|/etc/shadow:' days/Day003 labs/day003 evidence/day003; then fail_check 'No high-confidence secret pattern'; else pass 'No high-confidence secret pattern'; fi
exit "$fail"

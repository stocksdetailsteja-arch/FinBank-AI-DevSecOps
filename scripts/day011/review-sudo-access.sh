#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day011
if (($#)); then echo "Unsupported argument: $1" >&2; exit 64; fi
out=evidence/day011/sudo-access-review.md
{
 echo '# 🔐 Day011 Effective Sudo Review'; echo
 echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Policy Paths'; ls -ld /etc/sudoers /etc/sudoers.d; echo
 echo '## Effective Policy'; sudo -l 2>&1 || true
} > "$out"
sed -i 's/$//' "$out"; sed -i 's/[[:space:]]*$//' "$out"; printf 'Wrote %s
' "$repo/$out"

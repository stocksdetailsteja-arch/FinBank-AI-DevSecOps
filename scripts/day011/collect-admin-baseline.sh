#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day011
out=evidence/day011/admin-baseline.md
{
 echo '# 🛡️ Day011 Administration Baseline'; echo
 echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Current Identity'; id; echo
 echo '## Human-Range Local Accounts'; awk -F: '$3>=1000 {printf "%s uid=%s shell=%s
",$1,$3,$7}' /etc/passwd; echo
 echo '## Sudo Group'; getent group sudo || true; echo
 echo '## Failed Units'; systemctl --failed --no-pager || true
} > "$out"
sed -i 's/$//' "$out"; sed -i 's/[[:space:]]*$//' "$out"; printf 'Wrote %s
' "$repo/$out"

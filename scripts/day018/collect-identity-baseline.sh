#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day018
out=evidence/day018/identity-security-baseline.md
{
 echo '# 👥 Day018 Identity Security Baseline'; echo; echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Current Identity'; id; echo
 echo '## Human-Range Local Accounts'; awk -F: '$3>=1000 {printf "%s uid=%s shell=%s\n",$1,$3,$7}' /etc/passwd; echo
 echo '## Privileged Group Membership'; getent group sudo || true; echo
 echo '## Governance Note'; echo 'Evidence is limited to a training-host baseline; do not publish enterprise identity inventories.'
} > "$out"
printf 'Wrote %s
' "$out"

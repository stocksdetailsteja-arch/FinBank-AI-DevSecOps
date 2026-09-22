#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day012
if (($#)); then echo "Unsupported argument: $1" >&2; exit 64; fi
out=evidence/day012/ssh-security-review.md
{
 echo '# 🔐 Day012 SSH Security Review'; echo
 echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Effective Selected Settings'; sshd -T 2>/dev/null | grep -E '^(permitrootlogin|passwordauthentication|pubkeyauthentication|allowtcpforwarding|maxauthtries|clientaliveinterval)' || true; echo
 echo '## Configuration Permissions'; ls -ld /etc/ssh /etc/ssh/sshd_config /etc/ssh/sshd_config.d 2>/dev/null || true
} > "$out"
sed -i 's/$//' "$out"; sed -i 's/[[:space:]]*$//' "$out"; printf 'Wrote %s
' "$repo/$out"

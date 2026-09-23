#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day018
out=evidence/day018/privilege-ssh-review.md
{
 echo '# 🔐 Day018 Privilege and SSH Review'; echo; echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Effective Sudo'; sudo -l 2>&1 || true; echo
 echo '## Selected Effective SSH Settings'; sshd -T 2>/dev/null | grep -E '^(permitrootlogin|passwordauthentication|pubkeyauthentication|allowtcpforwarding|maxauthtries|clientaliveinterval)' || true; echo
 echo '## Configuration Ownership'; ls -ld /etc/sudoers /etc/sudoers.d /etc/ssh /etc/ssh/sshd_config /etc/ssh/sshd_config.d 2>/dev/null || true
} > "$out"
printf 'Wrote %s
' "$out"

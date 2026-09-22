#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day013
out=evidence/day013/login-event-review.md
{
 echo '# 🔐 Day013 Login Event Review'; echo
 echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Audit Platform'; systemctl is-active auditd.service 2>/dev/null || echo 'auditd unavailable or inactive'; command -v ausearch || echo 'ausearch unavailable'; echo
 echo '## SSH Event Count Current Boot'; journalctl -b -u ssh.service --no-pager 2>/dev/null | wc -l; echo
 echo '## Review Note'; echo 'Raw identities and network addresses are intentionally excluded from repository evidence.'
} > "$out"
sed -i 's/$//' "$out"; sed -i 's/[[:space:]]*$//' "$out"; printf 'Wrote %s
' "$repo/$out"

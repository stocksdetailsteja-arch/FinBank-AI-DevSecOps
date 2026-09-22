#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day013
out=evidence/day013/security-event-review.md
{
 echo '# 🔎 Day013 Security Event Review'; echo
 echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Failed Units'; systemctl --failed --no-pager || true; echo
 echo '## Sudo Event Count Current Boot'; journalctl -b _COMM=sudo --no-pager 2>/dev/null | wc -l; echo
 echo '## Process Baseline Count'; ps -e --no-headers | wc -l; echo
 echo '## Review Note'; echo 'Repository evidence contains aggregate counts, not raw identity-bearing events.'
} > "$out"
sed -i 's/$//' "$out"; sed -i 's/[[:space:]]*$//' "$out"; printf 'Wrote %s
' "$repo/$out"

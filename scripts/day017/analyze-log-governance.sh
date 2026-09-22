#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day017
if (($#)); then echo "Unsupported argument: $1" >&2; exit 64; fi
out=evidence/day017/log-governance-review.md
{
 echo '# 🔐 Day017 Log Governance Review'; echo; echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Configuration Paths'; ls -ld /etc/systemd/journald.conf /etc/systemd/journald.conf.d /etc/rsyslog.conf /etc/rsyslog.d /etc/logrotate.conf /etc/logrotate.d 2>/dev/null || true; echo
 echo '## Capability'; command -v journalctl || true; command -v rsyslogd || true; command -v logrotate || true; echo
 echo '## Governance Conclusion'; echo 'Read-only review completed; no log clearing, rotation forcing, retention change, or service restart performed.'
} > "$out"
printf 'Wrote %s
' "$out"

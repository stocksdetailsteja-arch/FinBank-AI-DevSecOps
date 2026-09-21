#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"; mkdir -p evidence/day008
out=evidence/day008/logging-baseline.md
{
 echo '# 🧾 Day 008 Logging Baseline'; echo
 echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## journald'; systemctl show systemd-journald.service -p ActiveState -p SubState -p MainPID; echo
 echo '## rsyslog'; systemctl show rsyslog.service -p ActiveState -p SubState -p MainPID 2>/dev/null || echo 'rsyslog unit unavailable'; echo
 echo '## Journal Disk Usage'; journalctl --disk-usage; echo
 echo '## Boots'; journalctl --list-boots | tail -n 10; echo
 echo '## Logrotate'; logrotate --version | head -n 2
} > "$out"
sed -i 's/$//' "$out"; sed -i 's/[[:space:]]*$//' "$out"
printf 'Wrote %s
' "$repo/$out"

#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"; mkdir -p evidence/day007
out=evidence/day007/systemd-baseline.md
{
 echo '# ⚙️ Day 007 systemd Baseline'; echo
 echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## PID 1'; ps -p 1 -o pid,ppid,user,stat,comm,args; echo
 echo '## Default Target'; systemctl get-default; echo
 echo '## Startup Timing'; systemd-analyze; echo
 echo '## Failed Units'; systemctl --failed --no-pager || true; echo
 echo '## Journal Disk Usage'; journalctl --disk-usage; echo
 echo '## User Demo State'; systemctl --user show finbank-day007-demo.service -p ActiveState -p SubState 2>/dev/null || echo 'demo unit absent'
} > "$out"
sed -i 's/$//' "$out"; sed -i 's/[[:space:]]*$//' "$out"
printf 'Wrote %s
' "$repo/$out"

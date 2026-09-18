#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
mkdir -p evidence/day004
out="evidence/day004/process-monitoring-baseline.md"
{
  echo '# 📈 Day 004 Process and Monitoring Baseline'; echo
  echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
  echo '## Host'; uname -srmo; nproc; uptime; echo
  echo '## PID 1'; ps -p 1 -o pid,ppid,user,stat,comm,args; echo
  echo '## Memory'; free -h; echo
  echo '## Load'; cat /proc/loadavg; echo
  echo '## Top Processes'; ps -eo pid,ppid,user,stat,ni,pcpu,pmem,etime,comm --sort=-pcpu | head -n 20; echo
  echo '## System State'; systemctl is-system-running 2>/dev/null || true; echo
  echo '## Failed Units'; systemctl --failed --no-pager 2>/dev/null || true; echo
  echo '## Listening Sockets'; ss -lntup
} > "$out"
printf 'Wrote %s
' "$repo/$out"

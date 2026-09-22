#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day016
out=evidence/day016/performance-baseline.md
{
 echo '# 📈 Day016 Performance Baseline'; echo; echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## CPU and Load'; uptime; nproc; echo; echo '## VM Samples'; vmstat 1 5; echo
 echo '## Memory'; free -h; echo; echo '## Filesystems'; df -hT; echo; echo '## Inodes'; df -ihT; echo
 echo '## Socket Summary'; ss -s; echo; echo '## Interface Counters'; ip -s link
} > "$out"
printf 'Wrote %s
' "$out"

#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day011
out=evidence/day011/resource-governance.md
{
 echo '# 📏 Day011 Resource Governance'; echo
 echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Shell Limits'; ulimit -a; echo
 echo '## Process Limits'; cat /proc/$$/limits; echo
 echo '## Filesystem Capacity'; df -hT; echo
 echo '## Inode Capacity'; df -ihT; echo
 echo '## Mount Summary'; findmnt -o TARGET,SOURCE,FSTYPE,OPTIONS | head -n 30
} > "$out"
sed -i 's/$//' "$out"; sed -i 's/[[:space:]]*$//' "$out"; printf 'Wrote %s
' "$repo/$out"

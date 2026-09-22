#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day015
if (($#)); then echo "Unsupported argument: $1" >&2; exit 64; fi
out=evidence/day015/capacity-risk-report.md
{
 echo '# 📊 Day015 Capacity and Inode Risk'; echo; echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Byte Capacity'; df -hT; echo; echo '## Inode Capacity'; df -ihT; echo
 echo '## Threshold Findings'; df -P | awk 'NR>1 && $5+0 >= 80 {print "HIGH byte usage:",$0}'; df -Pi | awk 'NR>1 && $5+0 >= 80 {print "HIGH inode usage:",$0}'
} > "$out"
printf 'Wrote %s
' "$out"

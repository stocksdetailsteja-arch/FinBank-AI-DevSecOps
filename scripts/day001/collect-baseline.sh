#!/usr/bin/env bash
set -euo pipefail
repo="${HOME}/Projects/FinBank-AI-DevSecOps"
cd "$repo"
mkdir -p evidence/day001
{
  echo '# FinBank Day 001 Baseline'
  echo
  echo '## Timestamp UTC'
  date -u '+%Y-%m-%dT%H:%M:%SZ'
  echo
  echo '## Identity'
  whoami
  id
  echo
  echo '## OS'
  grep -E '^(NAME|VERSION|VERSION_ID)=' /etc/os-release
  echo
  echo '## Kernel'
  uname -srmo
  echo
  echo '## Capacity'
  nproc
  free -h
  df -hT
  echo
  echo '## Git Context'
  git rev-parse --show-toplevel
  git branch --show-current
  git remote -v
} > evidence/day001/system-baseline.md
printf 'Wrote %s
' "$repo/evidence/day001/system-baseline.md"

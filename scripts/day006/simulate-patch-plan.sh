#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
mkdir -p evidence/day006
out="evidence/day006/patch-simulation.md"
{
  echo '# 🧪 Day 006 Read-Only Patch Simulation'; echo
  echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
  echo '## Upgradable Packages'; apt list --upgradable 2>/dev/null || true; echo
  echo '## Upgrade Simulation'; apt-get -s upgrade; echo
  echo '## Autoremove Simulation'; apt-get -s autoremove
} > "$out"
sed -i 's/$//' "$out"
sed -i 's/[[:space:]]*$//' "$out"
printf 'Wrote %s
' "$repo/$out"

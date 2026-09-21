#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
mkdir -p evidence/day006
out="evidence/day006/package-inventory.md"
count=$(dpkg-query -W -f='${binary:Package}
' | wc -l)
{
  echo '# 📦 Day 006 Package Inventory'; echo
  echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
  echo '## OS'; grep -E '^(NAME|VERSION|VERSION_ID)=' /etc/os-release; echo
  echo '## Tool Versions'; apt --version; dpkg --version | head -n 2; echo
  echo '## Installed Package Count'; echo "$count"; echo
  echo '## Selected Packages'; for p in bash openssl curl systemd; do dpkg-query -W -f='${binary:Package}	${Version}	${db:Status-Abbrev}
' "$p" 2>/dev/null || true; done; echo
  echo '## Held Packages'; apt-mark showhold || true; echo
  echo '## Source Files'; find /etc/apt -maxdepth 3 -type f \( -name '*.list' -o -name '*.sources' \) -print | sed 's#^#/host#'
} > "$out"
sed -i 's/[[:space:]]*$//' "$out"
printf 'Wrote %s
' "$repo/$out"

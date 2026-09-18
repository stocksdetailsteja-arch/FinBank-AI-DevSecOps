#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
mkdir -p evidence/day003
out="evidence/day003/linux-identity-audit.md"
{
  echo '# 🔐 Day 003 Linux Identity and Permission Audit'
  echo
  echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
  echo '## Current Identity'; whoami; id; echo
  echo '## Safe Account Record'; getent passwd "$(whoami)"; echo
  echo '## Primary Group Record'; getent group "$(id -gn)"; echo
  echo '## Current Umask'; umask; echo
  echo '## Lab Modes'; find labs/day003 -maxdepth 2 -printf '%M %m %u:%g %p
' | sort; echo
  echo '## Path Components'; namei -l "$repo/labs/day003/private/profile.txt"; echo
  echo '## ACL Capability'; command -v getfacl || echo 'getfacl unavailable'; command -v setfacl || echo 'setfacl unavailable'; echo
  echo '## Temporary Directory Mode'; stat -c '%A %a %U:%G %n' /tmp; echo
  echo '## SUID Inventory Sample'; find /usr/bin -xdev -perm -4000 -type f -printf '%M %u:%g %p
' 2>/dev/null | head -n 20
} > "$out"
printf '✅ Wrote %s
' "$repo/$out"

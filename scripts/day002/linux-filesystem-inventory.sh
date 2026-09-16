#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
mkdir -p evidence/day002
out="evidence/day002/linux-filesystem-inventory.md"
{
  echo '# 🐧 Day 002 Linux Filesystem Inventory'
  echo
  echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
  echo '## Operating System'; grep -E '^(NAME|VERSION|VERSION_ID)=' /etc/os-release; echo
  echo '## Kernel'; uname -srmo; echo
  echo '## PID 1'; ps -p 1 -o pid,comm,args; echo
  echo '## Default Target'; systemctl get-default 2>/dev/null || true; echo
  echo '## Key Directories'; ls -ld / /etc /var /run /tmp /proc /sys /dev /home /opt /srv /usr /boot; echo
  echo '## Filesystems'; df -hT; echo
  echo '## Inodes'; df -ih; echo
  echo '## Mount for Repository'; findmnt -T "$repo"; echo
  echo '## Block Devices'; lsblk -f; echo
  echo '## Lab Paths'; find labs/day002 -maxdepth 3 -printf '%M %u:%g %p
' | sort
} > "$out"
printf '✅ Wrote %s
' "$repo/$out"

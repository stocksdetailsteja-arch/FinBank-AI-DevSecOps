#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day015
out=evidence/day015/storage-inventory.md
{
 echo '# 💽 Day015 Storage Inventory'; echo; echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Block Devices'; lsblk -e7 -o NAME,TYPE,SIZE,FSTYPE,FSVER,LABEL,UUID,MOUNTPOINTS; echo
 echo '## Mounts'; findmnt -o TARGET,SOURCE,FSTYPE,OPTIONS
} > "$out"
printf 'Wrote %s
' "$out"

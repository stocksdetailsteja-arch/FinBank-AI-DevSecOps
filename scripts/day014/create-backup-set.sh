#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"
source_dir=labs/day014/source; backup_dir=labs/day014/backup; evidence=evidence/day014
[[ -d "$source_dir" ]] || { echo "Source directory missing: $source_dir" >&2; exit 66; }
mkdir -p "$backup_dir" "$evidence"
run_id="DAY014-$(date -u +%Y%m%dT%H%M%SZ)"; archive="$backup_dir/finbank-day014.tar.gz"
tar -czf "$archive" -C "$source_dir" .
{
 echo '# 📦 Day014 Backup Manifest'; echo
 printf 'run_id=%s
created_utc=%s
source=%s
archive=%s

' "$run_id" "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "$source_dir" "$archive"
 echo '## Source Files'; find "$source_dir" -maxdepth 1 -type f -print0 | sort -z | xargs -0 sha256sum
 echo; echo '## Archive'; sha256sum "$archive"
} > "$evidence/backup-manifest.md"
printf '%s
' "$run_id" > "$evidence/run-id.txt"
printf 'Wrote %s and %s
' "$archive" "$evidence/backup-manifest.md"

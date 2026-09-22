#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"
archive=labs/day014/backup/finbank-day014.tar.gz; source_dir=labs/day014/source; out=evidence/day014/integrity-report.md
[[ -f "$archive" ]] || { echo "Backup archive missing: $archive" >&2; exit 66; }
tar -tzf "$archive" >/dev/null
source_count=$(find "$source_dir" -maxdepth 1 -type f | wc -l)
archive_count=$(tar -tzf "$archive" | grep -v '/$' | wc -l)
status=PASS; [[ "$source_count" -eq "$archive_count" ]] || status=FAIL
{
 echo '# ✅ Day014 Backup Integrity Report'; echo
 printf 'validated_utc=%s
status=%s
source_file_count=%s
archive_file_count=%s
' "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "$status" "$source_count" "$archive_count"
 echo; echo '## Archive SHA-256'; sha256sum "$archive"
 echo; echo '## Archive Listing'; tar -tzf "$archive"
} > "$out"
[[ "$status" = PASS ]] || exit 1
printf 'Wrote %s
' "$out"

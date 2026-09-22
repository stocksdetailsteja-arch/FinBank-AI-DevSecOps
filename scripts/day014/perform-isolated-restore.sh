#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"
archive=labs/day014/backup/finbank-day014.tar.gz; source_dir=labs/day014/source; restore=labs/day014/restore; out=evidence/day014/restore-validation.md
[[ -f "$archive" ]] || { echo "Backup archive missing: $archive" >&2; exit 66; }
rm -rf "$restore"; mkdir -p "$restore"; tar -xzf "$archive" -C "$restore"
if diff -qr "$source_dir" "$restore" > evidence/day014/restore-diff.txt; then status=PASS; else status=FAIL; fi
{
 echo '# ♻️ Day014 Isolated Restore Validation'; echo
 printf 'restored_utc=%s
status=%s
source=%s
restore=%s
' "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "$status" "$source_dir" "$restore"
 echo; echo '## Restored Hashes'; find "$restore" -maxdepth 1 -type f -print0 | sort -z | xargs -0 sha256sum
 echo; echo '## Differences'; cat evidence/day014/restore-diff.txt
} > "$out"
[[ "$status" = PASS ]] || exit 1
printf 'Wrote %s
' "$out"

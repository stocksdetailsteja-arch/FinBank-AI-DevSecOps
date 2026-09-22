#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"
original=labs/day014/backup/finbank-day014.tar.gz; corrupt=labs/day014/backup/corrupted-test-copy.tar.gz; out=evidence/day014/corruption-test.md
[[ -f "$original" ]] || { echo "Backup archive missing: $original" >&2; exit 66; }
cp "$original" "$corrupt"; printf 'SYNTHETIC_CORRUPTION' >> "$corrupt"
orig_hash=$(sha256sum "$original" | awk '{print $1}'); corrupt_hash=$(sha256sum "$corrupt" | awk '{print $1}')
[[ "$orig_hash" != "$corrupt_hash" ]] || { echo 'Corruption was not detected' >&2; exit 1; }
{
 echo '# 🚨 Day014 Corruption Detection Test'; echo
 printf 'tested_utc=%s
status=PASS
original_sha256=%s
corrupted_copy_sha256=%s
mismatch_detected=true
cleanup=completed
' "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "$orig_hash" "$corrupt_hash"
} > "$out"
rm -f "$corrupt"; printf 'Wrote %s
' "$out"

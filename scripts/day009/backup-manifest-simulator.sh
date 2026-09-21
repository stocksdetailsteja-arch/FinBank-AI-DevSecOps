#!/usr/bin/env bash
set -euo pipefail
usage(){ echo "Usage: $0 --source DIR --output FILE"; }
log(){ printf '%s level=%s component=backup-manifest message=%q
' "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "$1" "$2"; }
source_dir=''; output=''
while (($#)); do case "$1" in --source) [[ $# -ge 2 ]] || { usage >&2; exit 64; }; source_dir=$2; shift 2;; --output) [[ $# -ge 2 ]] || { usage >&2; exit 64; }; output=$2; shift 2;; -h|--help) usage; exit 0;; *) echo "Unknown argument: $1" >&2; usage >&2; exit 64;; esac; done
[[ -n "$source_dir" && -n "$output" ]] || { usage >&2; exit 64; }
[[ -d "$source_dir" ]] || { echo "Source directory not found: $source_dir" >&2; exit 66; }
mkdir -p "$(dirname "$output")"
tmp=$(mktemp); cleanup(){ rc=$?; rm -f "$tmp"; exit "$rc"; }; trap cleanup EXIT INT TERM
{
 echo '# FINBANK DAY009 SYNTHETIC BACKUP MANIFEST'
 printf 'generated_utc=%s
' "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
 printf 'source=%s
' "$source_dir"
 find "$source_dir" -maxdepth 1 -type f -print0 | sort -z | while IFS= read -r -d '' file; do sha256sum "$file"; done
} > "$tmp"
mv "$tmp" "$output"; trap - EXIT INT TERM
log INFO "manifest_created output=$output"

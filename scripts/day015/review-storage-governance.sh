#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day015
out=evidence/day015/storage-governance-review.md
{
 echo '# 🔐 Day015 Storage Governance Review'; echo; echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## LVM Capability'; for c in pvs vgs lvs; do command -v "$c" || echo "$c unavailable"; done; echo
 echo '## LVM State'; pvs 2>/dev/null || true; vgs 2>/dev/null || true; lvs 2>/dev/null || true; echo
 echo '## Governance Conclusion'; echo 'Read-only review completed; no device, filesystem, LVM, mount, or cloud storage change performed.'
} > "$out"
printf 'Wrote %s
' "$out"

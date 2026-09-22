#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day017
out=evidence/day017/observability-baseline.md
{
 echo '# 🔭 Day017 Observability Baseline'; echo; echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
 echo '## Retained Boots'; journalctl --list-boots 2>/dev/null | tail -n 10 || true; echo
 echo '## Journal Disk Usage'; journalctl --disk-usage 2>/dev/null || true; echo
 echo '## Service State'; systemctl is-active systemd-journald.service 2>/dev/null || true; systemctl is-active rsyslog.service 2>/dev/null || true; echo
 echo '## Current-Boot Warning Count'; journalctl -b -p warning..alert --no-pager 2>/dev/null | wc -l
} > "$out"
printf 'Wrote %s
' "$out"

#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
mkdir -p labs/day004 evidence/day004
pid_file="labs/day004/cpu-workload.pid"
if [[ -f "$pid_file" ]] && kill -0 "$(cat "$pid_file")" 2>/dev/null; then
  printf 'Workload already running with PID %s
' "$(cat "$pid_file")"
  exit 0
fi
bash -c 'exec -a finbank-day004-cpu bash -c "end=\$((SECONDS+45)); while (( SECONDS < end )); do :; done"' > evidence/day004/cpu-workload.out 2>&1 &
pid=$!
printf '%s
' "$pid" > "$pid_file"
printf 'Started bounded Day004 workload with PID %s
' "$pid"

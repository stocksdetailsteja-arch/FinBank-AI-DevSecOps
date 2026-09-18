#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
pid_file="labs/day004/cpu-workload.pid"
if [[ ! -f "$pid_file" ]]; then echo 'No PID file; workload already absent'; exit 0; fi
pid=$(cat "$pid_file")
if kill -0 "$pid" 2>/dev/null; then
  kill -TERM "$pid"
  for _ in 1 2 3 4 5; do kill -0 "$pid" 2>/dev/null || break; sleep 1; done
fi
if kill -0 "$pid" 2>/dev/null; then echo "Workload PID $pid did not stop gracefully"; exit 1; fi
rm -f "$pid_file"
echo 'Graceful stop validated; PID file removed'

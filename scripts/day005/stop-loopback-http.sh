#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
pid_file="labs/day005/http.pid"
if [[ ! -f "$pid_file" ]]; then echo 'No PID file; service already absent'; exit 0; fi
pid=$(cat "$pid_file")
if kill -0 "$pid" 2>/dev/null; then kill -TERM "$pid"; for _ in 1 2 3 4 5; do kill -0 "$pid" 2>/dev/null || break; sleep 1; done; fi
if kill -0 "$pid" 2>/dev/null; then echo "PID $pid did not stop gracefully"; exit 1; fi
rm -f "$pid_file"
echo 'Loopback HTTP service stopped and PID file removed'

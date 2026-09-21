#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
mkdir -p labs/day005/site evidence/day005
pid_file="labs/day005/http.pid"
if [[ -f "$pid_file" ]] && kill -0 "$(cat "$pid_file")" 2>/dev/null; then echo "Service already running with PID $(cat "$pid_file")"; exit 0; fi
printf 'FINBANK_DAY005_OK
' > labs/day005/site/health.txt
python3 -m http.server 18080 --bind 127.0.0.1 --directory labs/day005/site > evidence/day005/http-server.log 2>&1 &
pid=$!
printf '%s
' "$pid" > "$pid_file"
for _ in 1 2 3 4 5; do curl --fail --silent http://127.0.0.1:18080/health.txt >/dev/null 2>&1 && break; sleep 1; done
if ! kill -0 "$pid" 2>/dev/null; then echo 'Loopback service failed to start'; exit 1; fi
printf 'Started loopback-only HTTP service with PID %s
' "$pid"

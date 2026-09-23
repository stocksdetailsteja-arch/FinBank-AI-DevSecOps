#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps";mkdir -p /tmp/finbank-day023 evidence/day023
if test ! -f finbank-app/build/classes/com/finbank/FinBankApplication.class;then ./scripts/day023/build-finbank.sh >/dev/null;fi
pidfile=/tmp/finbank-day023/finbank.pid;if test -s "$pidfile" && kill -0 "$(cat "$pidfile")" 2>/dev/null;then echo 'FinBank already running';exit 0;fi
java -cp finbank-app/build/classes com.finbank.FinBankApplication > /tmp/finbank-day023/finbank.log 2>&1 & echo $! > "$pidfile"
for i in $(seq 1 20);do if curl -fsS http://127.0.0.1:8080/health >/tmp/finbank-day023/health.json 2>/dev/null;then break;fi;sleep 1;done
curl -fsS http://127.0.0.1:8080/health >/tmp/finbank-day023/health.json
{ echo '# Day023 Runtime Report'; echo '## PID'; cat "$pidfile"; echo '## Bind'; echo 'http://127.0.0.1:8080'; echo '## Health'; cat /tmp/finbank-day023/health.json; } | tee evidence/day023/runtime-report.md

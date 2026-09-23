#!/usr/bin/env bash
set -euo pipefail
pidfile=/tmp/finbank-day023/finbank.pid
if test -s "$pidfile";then pid=$(cat "$pidfile");if kill -0 "$pid" 2>/dev/null;then kill "$pid";for i in $(seq 1 10);do kill -0 "$pid" 2>/dev/null || break;sleep 1;done;fi;rm -f "$pidfile";fi
echo 'FinBank Day023 stopped'

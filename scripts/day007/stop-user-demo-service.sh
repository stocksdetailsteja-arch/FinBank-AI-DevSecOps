#!/usr/bin/env bash
set -euo pipefail
systemctl --user stop finbank-day007-demo.service 2>/dev/null || true
systemctl --user reset-failed finbank-day007-demo.service 2>/dev/null || true
if systemctl --user is-active --quiet finbank-day007-demo.service; then echo 'Demo service remains active'; exit 1; fi
echo 'Day007 demo user service is inactive'

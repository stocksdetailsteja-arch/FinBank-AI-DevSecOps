#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"
mkdir -p evidence/day005
out="evidence/day005/network-baseline.md"
{
  echo '# 🌐 Day 005 Network Baseline'; echo
  echo '## Timestamp UTC'; date -u '+%Y-%m-%dT%H:%M:%SZ'; echo
  echo '## Interfaces'; ip -brief link; echo
  echo '## Address Families'; ip -brief address | sed -E 's/([0-9]{1,3}\.){3}[0-9]{1,3}\/[0-9]+/[REDACTED-IPv4]/g'; echo
  echo '## Routes'; ip route | sed -E 's/([0-9]{1,3}\.){3}[0-9]{1,3}/[REDACTED-IPv4]/g'; echo
  echo '## Local Resolution'; getent hosts localhost; echo
  echo '## NSS Hosts Order'; grep '^hosts:' /etc/nsswitch.conf || true; echo
  echo '## Ephemeral Port Range'; cat /proc/sys/net/ipv4/ip_local_port_range; echo
  echo '## Listening Port Summary'; ss -lnt | awk 'NR==1 || /127.0.0.1:18080|:22 / {print}' | sed 's/[[:space:]]*$//'
} > "$out"
sed -i 's/[[:space:]]*$//' "$out"
printf 'Wrote redacted baseline %s
' "$repo/$out"

#!/usr/bin/env bash
set -euo pipefail
repo="$HOME/Projects/FinBank-AI-DevSecOps"; cd "$repo"; mkdir -p evidence/day015
cat > evidence/day015/storage-decision-record.md <<'EOF'
# 🏗️ Day015 Storage Architecture Decision

## Decision
Use a governed layered model with encrypted block storage, supported filesystem, separate performance domains where justified, monitoring for bytes/inodes/latency, and independent backup/restore controls.

## Rejected Alternative
A single unmanaged filesystem for all banking data, logs, audit evidence, and temporary files was rejected because it combines growth, performance, access, and failure risks.

## Security Trade-off
More separation improves control boundaries but increases operational complexity and evidence requirements.

## Cost Trade-off
Provisioned performance and recovery copies increase cost but reduce outage, integrity, and compliance exposure.

## Recovery Path
Restore into isolation, validate technical integrity, then reconcile banking transactions and audit continuity before cutover.
EOF
printf 'Wrote evidence/day015/storage-decision-record.md
'

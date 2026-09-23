#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps"; mkdir -p evidence/day020; out=evidence/day020/compliance-evidence-review.md
printf '%s\n' '# Day020 Compliance Evidence Review' '## Principles' '- defined scope and owner' '- attributable collection method' '- protected evidence' '- operating-effectiveness review' '- exceptions and retention' '## Certification Boundary' 'This lab demonstrates evidence practice and does not provide certification.' | tee "$out"

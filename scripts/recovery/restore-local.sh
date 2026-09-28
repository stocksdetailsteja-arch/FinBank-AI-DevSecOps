#!/usr/bin/env bash
set -euo pipefail
cat <<'EOF'
FinBank Restore Workflow
1. Create supported Ubuntu EC2.
2. Configure approved GitHub SSH access outside the repository.
3. Clone git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git
4. Run ./finbank bootstrap --install
5. Run ./finbank doctor
6. Run ./finbank build
7. Run ./finbank start
8. Run ./finbank test
9. Run ./finbank verify
10. Run ./finbank stop
Persistent real data and secrets require separate approved restore systems.
EOF

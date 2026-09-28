#!/usr/bin/env bash
set -euo pipefail
file=.gitignore
begin='# BEGIN FINBANK RECOVERY EXCLUSIONS'
end='# END FINBANK RECOVERY EXCLUSIONS'
touch "$file"
if grep -Fq "$begin" "$file"; then echo 'PASS: .gitignore recovery exclusions already present'; exit 0; fi
cat >> "$file" <<'EOF'
# BEGIN FINBANK RECOVERY EXCLUSIONS
.env
.env.local
*.key
*.pem
*.p12
*.jks
*.pid
*.log
finbank-app/build/
terraform.tfstate
terraform.tfstate.*
.terraform/
backups/private/
data/runtime/
# END FINBANK RECOVERY EXCLUSIONS
EOF
echo 'PASS: .gitignore recovery exclusions added'

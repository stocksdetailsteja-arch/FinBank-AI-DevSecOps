#!/usr/bin/env bash
set -euo pipefail
required='git java curl unzip aws docker terraform'
for tool in $required; do
 if command -v "$tool" >/dev/null 2>&1; then echo "PASS: $tool -> $(command -v "$tool")"; else echo "FAIL: $tool missing"; exit 69; fi
done
git --version
java -version
aws --version
docker --version
terraform version | head -1

#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
mode=${1:-validate}
install_toolchain(){
 sudo apt-get update
 sudo apt-get install -y git curl unzip openjdk-21-jdk docker.io
 sudo systemctl enable docker
 sudo systemctl start docker
 if ! command -v aws >/dev/null 2>&1; then
  tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT
  curl -fsSL https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o "$tmp/awscliv2.zip"
  unzip -q "$tmp/awscliv2.zip" -d "$tmp"
  sudo "$tmp/aws/install" --update
 fi
 if ! command -v terraform >/dev/null 2>&1; then sudo snap install terraform --classic; fi
}
if test "$mode" = '--install'; then install_toolchain; elif test "$mode" != 'validate'; then echo 'Usage: ./finbank bootstrap [--install]'; exit 64; fi
mkdir -p docs/recovery/snapshots evidence/day024
./scripts/bootstrap/tool-validation.sh
./scripts/bootstrap/harden-gitignore.sh
test -d finbank-app || { echo 'FAIL: finbank-app missing'; exit 66; }
echo 'PASS: Bootstrap complete'

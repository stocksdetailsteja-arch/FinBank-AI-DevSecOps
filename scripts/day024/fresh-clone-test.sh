#!/usr/bin/env bash
set -euo pipefail
source_repo=${1:-}
if test -z "$source_repo"; then source_repo=$(git rev-parse --show-toplevel); fi
if test ! -d "$source_repo/.git"; then echo "Repository not found: $source_repo"; exit 66; fi
tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT
git clone -q "$source_repo" "$tmp/repo"
cd "$tmp/repo"
./finbank doctor >/dev/null
./finbank bootstrap >/dev/null
./finbank build >/dev/null
./finbank start >/dev/null
./finbank test >/dev/null
./finbank stop >/dev/null
echo 'PASS: Fresh-clone lifecycle completed'

#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps";mkdir -p evidence/day023
{ echo '# Day023 Architecture Validation'; echo '## Domains'; printf '%s\n' customer account transaction payment; echo '## Runtime'; echo 'Java 17 localhost modular core'; echo '## Persistence'; echo 'Synthetic in-memory repository'; echo '## Money'; echo 'Integer minor units with explicit currency'; echo '## Day120 Path'; echo 'Spring Boot, PostgreSQL, Kafka, security, containers, Kubernetes, AWS, observability, resilience and AI governance'; } | tee evidence/day023/architecture-validation.md

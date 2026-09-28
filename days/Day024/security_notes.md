[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Recovery Security, Secrets & Supply-Chain Controls

> [!IMPORTANT]
> Day024 turns the repository into the recovery source of truth. A fresh Ubuntu machine can validate or install the approved toolchain, rebuild the Day023 FinBank application, start it on localhost, verify its APIs, stop it safely, and produce recovery evidence without relying on chat history or the original EC2 disk.

## Recovery Principle

GitHub stores everything required to recreate the application and development environment, but stores no secrets, private keys, real banking data, runtime database contents, or sensitive Terraform state.

## Never Commit

- AWS credentials, tokens or private keys
- database passwords or real connection strings
- real customer, payment or account data
- private certificates
- Terraform state
- unredacted sensitive logs
- database backups containing real data

## Commit and Review

- application source and tests
- safe configuration examples
- migrations and synthetic seed data
- Docker, Kubernetes and Terraform definitions
- bootstrap and recovery scripts
- monitoring and policy definitions
- documentation and validation evidence

## Minimum Controls

Protected branches, peer review, secret scanning, dependency validation, artifact integrity, least privilege, encrypted backups, restore testing, state locking and auditable approvals.

---

**🏦 FinBank AI DevSecOps · Day 024 of 120**
*Clone · Bootstrap · Build · Verify · Recover · Govern*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Fresh-Clone Testing, Negative Validation & Regression

> [!IMPORTANT]
> Day024 turns the repository into the recovery source of truth. A fresh Ubuntu machine can validate or install the approved toolchain, rebuild the Day023 FinBank application, start it on localhost, verify its APIs, stop it safely, and produce recovery evidence without relying on chat history or the original EC2 disk.

## Recovery Principle

GitHub stores everything required to recreate the application and development environment, but stores no secrets, private keys, real banking data, runtime database contents, or sensitive Terraform state.

## Positive Gates

- doctor validates actual environment
- bootstrap validates or installs missing prerequisites
- build recreates application classes
- start binds only to localhost
- tests validate all Day023 APIs
- verify runs environment, application and recovery gates
- stop removes the tracked runtime
- reset removes generated artifacts without deleting source

## Negative Gates

- missing repository returns exit `66`
- wrong origin fails validation
- missing tool fails validate-only bootstrap
- secrets and Terraform state fail repository scans
- generated classes and PID files are excluded
- application cannot bind publicly

## Fresh-Clone Acceptance

A temporary local clone must complete doctor, bootstrap, build, start, test, verify and stop without accessing files outside the clone except approved system tools and `/tmp` runtime paths.

---

**🏦 FinBank AI DevSecOps · Day 024 of 120**
*Clone · Bootstrap · Build · Verify · Recover · Govern*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Explained Recovery Command Center

> [!IMPORTANT]
> Day024 turns the repository into the recovery source of truth. A fresh Ubuntu machine can validate or install the approved toolchain, rebuild the Day023 FinBank application, start it on localhost, verify its APIs, stop it safely, and produce recovery evidence without relying on chat history or the original EC2 disk.

## Recovery Principle

GitHub stores everything required to recreate the application and development environment, but stores no secrets, private keys, real banking data, runtime database contents, or sensitive Terraform state.

## Validate Without Installing

```bash
./finbank doctor
```

Inspects Ubuntu, architecture, CPU, memory, disk, Git, Java, AWS CLI, Docker, Terraform, Docker service health, repository root and current branch.

## Install Missing Prerequisites

```bash
./finbank bootstrap --install
```

On Ubuntu, installs or restores Git, curl, unzip, Java 21, AWS CLI v2, Docker and Terraform using the package's approved installation functions. Existing valid tools are not reinstalled.

## Validate-Only Bootstrap

```bash
./finbank bootstrap
```

Fails safely if mandatory tools are missing and prints the explicit installation command.

## Build, Start, Test and Verify

```bash
./finbank build
./finbank start
./finbank test
./finbank verify
```

Build compiles Day023 Java source. Start uses the existing localhost lifecycle. Test executes API smoke checks. Verify runs environment, Day023 and Day024 recovery gates.

## Safe Shutdown and Reset

```bash
./finbank stop
./finbank reset
```

Stop terminates only the tracked FinBank process. Reset removes `/tmp/finbank-day023` and Java build output while preserving all source, documentation and evidence already committed.

## Backup and Restore Guidance

```bash
./finbank backup
./finbank restore
```

Backup writes a sanitized repository and tool metadata snapshot. Restore validates the documented steps and never overwrites source or downloads secrets.

---

**🏦 FinBank AI DevSecOps · Day 024 of 120**
*Clone · Bootstrap · Build · Verify · Recover · Govern*

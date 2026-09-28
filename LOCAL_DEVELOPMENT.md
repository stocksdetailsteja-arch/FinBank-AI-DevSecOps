[🏠 Day024 Overview](days/Day024/README.md) · [🧰 Tools](TOOLS_AND_VERSIONS.md) · [🏗️ Build](BUILD_FROM_SCRATCH.md) · [💻 Local Development](LOCAL_DEVELOPMENT.md) · [♻️ Backup](BACKUP_AND_RESTORE.md) · [🚨 Disaster Recovery](DISASTER_RECOVERY.md)

---

# 💻 FinBank Local Development

> [!NOTE]
> The current application is a Java 21 localhost modular core with synthetic in-memory data. All future application work must extend this repository and preserve the recovery interface.

## Daily Workflow

```bash
./finbank doctor
./finbank bootstrap
./finbank build
./finbank start
./finbank test
./finbank verify
./finbank stop
```

## Branch Workflow

Start from updated `main`, create one milestone branch, validate only approved paths, commit, push, open a PR, merge, and confirm a clean remote-backed main branch.

## Source and Generated Artifacts

Commit Java source, scripts, documentation, safe configuration examples and tests. Do not commit build classes, PID files, logs, caches, secrets, Terraform state or future local database volumes.

## Current Source

`finbank-app/src/com/finbank` contains the customer, account, transaction, money, repository, JSON and HTTP application classes introduced in Day023.

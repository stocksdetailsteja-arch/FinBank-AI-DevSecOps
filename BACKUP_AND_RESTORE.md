[🏠 Day024 Overview](days/Day024/README.md) · [🧰 Tools](TOOLS_AND_VERSIONS.md) · [🏗️ Build](BUILD_FROM_SCRATCH.md) · [💻 Local Development](LOCAL_DEVELOPMENT.md) · [♻️ Backup](BACKUP_AND_RESTORE.md) · [🚨 Disaster Recovery](DISASTER_RECOVERY.md)

---

# ♻️ Backup & Restore

> [!IMPORTANT]
> Git push is the project-definition backup. It is not a backup of secrets or future persistent banking data.

## Protected by GitHub

Source, scripts, documentation, tests, migrations, synthetic seed data, Docker assets, Kubernetes assets, Terraform definitions, monitoring configuration and recovery procedures.

## Protected Elsewhere

Secrets, keys, certificates, real database backups, Terraform state, production logs and customer data require encrypted, access-controlled systems with retention and restore testing.

## Daily Project Backup

```bash
git status
git diff --check
git add <approved-paths>
git diff --cached --check
git commit -m "descriptive milestone message"
git push
```

## Metadata Snapshot

```bash
./finbank backup
```

## Application Restore

Clone, run install bootstrap, build, start, test and verify. Future persistent-data restore will additionally validate backup integrity, restore to an isolated target, run compatible migrations, reconcile financial state and obtain authorized approval.

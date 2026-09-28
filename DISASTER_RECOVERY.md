[🏠 Day024 Overview](days/Day024/README.md) · [🧰 Tools](TOOLS_AND_VERSIONS.md) · [🏗️ Build](BUILD_FROM_SCRATCH.md) · [💻 Local Development](LOCAL_DEVELOPMENT.md) · [♻️ Backup](BACKUP_AND_RESTORE.md) · [🚨 Disaster Recovery](DISASTER_RECOVERY.md)

---

# 🚨 Disaster Recovery

> [!WARNING]
> Recovery is complete only after technical health, data integrity, banking reconciliation, security controls and audit evidence pass.

## EC2 Lost

Launch a supported Ubuntu host, configure GitHub access, clone the repository, run `./finbank bootstrap --install`, then build, start, test and verify.

## Repository Working Copy Corrupted

Preserve required forensic evidence, stop the runtime, clone a fresh working copy, compare the committed revision, and validate through the root command.

## Toolchain Lost or Damaged

Run doctor, use install bootstrap, compare the resulting version with the documented baseline, rebuild and verify.

## Docker Failure

Check daemon state, storage and permissions. Restore the approved Docker package and service status, then rerun doctor and verify.

## Terraform Failure

Restore the approved CLI version. Never recreate infrastructure from memory or from local state. Use reviewed code and a protected remote backend when introduced.

## Future Database Failure

Restore an encrypted verified backup, apply compatible migrations, reconcile accounts, payments, transactions and ledger control totals, validate audit continuity, and document RPO/RTO evidence.

## Future AWS Environment Failure

Use reviewed Terraform definitions, approved state, secrets and backups. Execute plan and apply as explicit controlled actions, then run service, data and observability validation.

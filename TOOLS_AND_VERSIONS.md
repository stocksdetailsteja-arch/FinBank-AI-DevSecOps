[🏠 Day024 Overview](days/Day024/README.md) · [🧰 Tools](TOOLS_AND_VERSIONS.md) · [🏗️ Build](BUILD_FROM_SCRATCH.md) · [💻 Local Development](LOCAL_DEVELOPMENT.md) · [♻️ Backup](BACKUP_AND_RESTORE.md) · [🚨 Disaster Recovery](DISASTER_RECOVERY.md)

---

# 🧰 FinBank Tools & Versions

> [!NOTE]
> This is the validated Day024 reference toolchain. Bootstrap verifies the actual machine and installs missing approved prerequisites only when `--install` is explicit.

| Component | Reference Version or State |
|---|---|
| Ubuntu | 26.04 LTS |
| Kernel | 7.0.0-1012-aws |
| Architecture | x86_64 |
| Java | 21.0.12 |
| Git | 2.53.0 |
| AWS CLI | 2.31.35 |
| Docker | 29.1.3, enabled and active |
| Terraform | 1.16.4 |

## Validate

```bash
./finbank doctor
./scripts/bootstrap/tool-validation.sh
```

## Installation Policy

Use `./finbank bootstrap --install` on supported Ubuntu hosts. Do not install tools from unreviewed scripts or silently upgrade production toolchains. New mandatory tools must be added to doctor, bootstrap, validation, recovery documentation and the Day120 manifest.

## Tool Recovery

If a tool is lost, rerun install mode, validate the exact executable and version, rerun build and verify, and record any intentional version change through Git review.

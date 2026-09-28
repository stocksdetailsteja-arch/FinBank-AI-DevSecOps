[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Repository Recovery & Reproducible Environment Concepts

> [!IMPORTANT]
> Day024 turns the repository into the recovery source of truth. A fresh Ubuntu machine can validate or install the approved toolchain, rebuild the Day023 FinBank application, start it on localhost, verify its APIs, stop it safely, and produce recovery evidence without relying on chat history or the original EC2 disk.

## Recovery Principle

GitHub stores everything required to recreate the application and development environment, but stores no secrets, private keys, real banking data, runtime database contents, or sensitive Terraform state.

## Recovery Assets

| Asset | GitHub | External Secure Backup | Regenerated |
|---|:---:|:---:|:---:|
| application source | ✅ | optional mirror | no |
| documentation and scripts | ✅ | optional mirror | no |
| migrations and synthetic seed data | ✅ | optional mirror | no |
| secrets and private keys | ❌ | ✅ secret manager | no |
| real database contents | ❌ | ✅ encrypted backup | no |
| build classes and caches | ❌ | ❌ | ✅ |
| Terraform state | ❌ | ✅ protected backend | no |
| runtime PID files and logs | ❌ | optional log platform | ✅ |

## Recovery Point and Recovery Time

The repository commit defines the code and configuration recovery point. Runtime data requires a separately protected backup point. Recovery time depends on machine creation, tool installation, dependency retrieval, build, restore, and verification.

## Reproducibility

A reproducible milestone has pinned or documented tools, committed source, deterministic build commands, safe configuration examples, migrations or seed data when applicable, lifecycle commands, tests, and failure recovery.

## Idempotent Bootstrap

Bootstrap may run repeatedly. Existing valid tools are reused, missing tools are installed only when `--install` is explicit, directories are recreated safely, and source files are never deleted.

## Source of Truth

- GitHub is authoritative for source, scripts, documentation, migrations, synthetic data and infrastructure definitions.
- Secret managers are authoritative for credentials and private material.
- Encrypted backups are authoritative for persistent runtime data.
- EC2 local disks are disposable caches, not the sole copy of important assets.

## Day120 Integration

Every future feature must extend `./finbank`, update prerequisites, update rebuild instructions, preserve a fresh-clone path, and pass the Day024 recovery validator.

---

**🏦 FinBank AI DevSecOps · Day 024 of 120**
*Clone · Bootstrap · Build · Verify · Recover · Govern*

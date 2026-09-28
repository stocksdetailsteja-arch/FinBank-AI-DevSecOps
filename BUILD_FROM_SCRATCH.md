[🏠 Day024 Overview](days/Day024/README.md) · [🧰 Tools](TOOLS_AND_VERSIONS.md) · [🏗️ Build](BUILD_FROM_SCRATCH.md) · [💻 Local Development](LOCAL_DEVELOPMENT.md) · [♻️ Backup](BACKUP_AND_RESTORE.md) · [🚨 Disaster Recovery](DISASTER_RECOVERY.md)

---

# 🏗️ Build FinBank From Scratch

> [!IMPORTANT]
> This procedure recreates the Day024 demonstration platform from a fresh Ubuntu EC2 using GitHub content and approved tool downloads. It does not restore real database contents or secrets.

## 1. Configure GitHub Access

Create or restore an approved SSH key outside the repository and add the public key to GitHub.

## 2. Clone

```bash
git clone git@github.com:stocksdetailsteja-arch/FinBank-AI-DevSecOps.git
cd FinBank-AI-DevSecOps
```

## 3. Install and Validate

```bash
./finbank bootstrap --install
./finbank doctor
```

## 4. Build and Run

```bash
./finbank build
./finbank start
./finbank test
./finbank verify
```

## 5. Inspect and Stop

```bash
./finbank status
./finbank stop
```

## 6. Rebuild Generated Artifacts

```bash
./finbank reset
./finbank build
./finbank verify
```

## Success Criteria

All mandatory tools pass, Java source compiles, localhost health and API smoke tests pass, no secrets are detected, prior days remain present, and no original-EC2-only file is required.

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Read-Only Security Audit Lab

## 1. Branch
```bash
git switch main
git pull --ff-only
git switch -c day-012-linux-security-hardening
mkdir -p labs/day012 evidence/day012 screenshots/labs/day012
```
## 2. Create Synthetic Permission Fixture
```bash
printf 'synthetic only
' > labs/day012/safe.txt
printf 'synthetic finding
' > labs/day012/world-writable-demo.txt
chmod 600 labs/day012/safe.txt
chmod 666 labs/day012/world-writable-demo.txt
ls -l labs/day012
```
## 3. Review SSH, Files and ACLs
Use the commands in `commands.md`; do not edit any configuration.
## 4. Review Exposure and Host Defenses
Capture listeners, firewall state, AppArmor and selected sysctls.
## 5. Generate Reports
```bash
chmod +x scripts/day012/*.sh
./scripts/day012/audit-ssh-security.sh
./scripts/day012/audit-filesystem-security.sh
./scripts/day012/audit-host-exposure.sh
```
## 6. Controlled Failure
```bash
set +e
./scripts/day012/audit-ssh-security.sh --unsupported
echo "controlled_exit_code=$?"
set -e
```
## 7. Cleanup Synthetic Risk
```bash
chmod 600 labs/day012/world-writable-demo.txt
```
## 8. Validate
```bash
./scripts/day012/validate-day012.sh
git diff --check
```
> [!CAUTION]
> Do not reload SSH, enable/disable UFW, write sysctls, change AppArmor profiles, or alter system file permissions.

---

**🏦 FinBank AI DevSecOps · Day 012 of 120**
*Learn · Audit · Harden · Validate · Document · Improve*

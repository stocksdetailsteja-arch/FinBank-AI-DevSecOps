[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Read-Only Administration Laboratory

## 🎯 Objective
Create an auditable, sanitized baseline of users, privileged groups, sudo access, resource limits, filesystem capacity and service health without changing the host.

## 1️⃣ Branch and Boundary
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-011-advanced-linux-administration
mkdir -p labs/day011 evidence/day011 screenshots/labs/day011
```

## 2️⃣ Repository Safety
```bash
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## 3️⃣ Identity and Group Inventory
```bash
id
getent group sudo
awk -F: '$3>=1000 {printf "%s uid=%s shell=%s
",$1,$3,$7}' /etc/passwd
```

## 4️⃣ Sudo Policy Review
```bash
sudo -l
sudo -V | head -n 5
ls -ld /etc/sudoers /etc/sudoers.d
```
Do not invoke a privileged shell or edit policy.

## 5️⃣ Limits and Capacity
```bash
ulimit -a
cat /proc/$$/limits
df -hT
df -ihT
findmnt -o TARGET,SOURCE,FSTYPE,OPTIONS | head -n 30
```

## 6️⃣ Service Governance
```bash
systemctl --failed --no-pager
systemctl list-units --type=service --state=running --no-pager | head -n 25
```

## 7️⃣ Generate Audit Evidence
```bash
chmod +x scripts/day011/*.sh
./scripts/day011/collect-admin-baseline.sh
./scripts/day011/review-sudo-access.sh
./scripts/day011/check-resource-governance.sh
```

## 8️⃣ Controlled Negative Test
```bash
set +e
./scripts/day011/review-sudo-access.sh --unsupported
echo "controlled_exit_code=$?"
set -e
```

## 9️⃣ Final Validation
```bash
./scripts/day011/validate-day011.sh
git diff --check
```

> [!CAUTION]
> Do not run `useradd`, `usermod`, `groupmod`, `passwd`, `visudo`, `pam-auth-update`, `mount`, `systemctl restart`, or any policy-changing command.

---

**🏦 FinBank AI DevSecOps · Day 011 of 120**
*Learn · Audit · Validate · Secure · Document · Improve*

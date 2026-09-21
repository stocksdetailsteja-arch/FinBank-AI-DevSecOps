[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Read-Only Package Audit Laboratory

## 🎯 Objective
Create an auditable package inventory, inspect repository configuration, compare installed and candidate versions, simulate changes, verify package ownership/integrity and produce a patch-readiness report without modifying the host.

## 1️⃣ Create Branch and Lab Boundary
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-006-linux-package-management
mkdir -p labs/day006 evidence/day006 screenshots/labs/day006
```

## 2️⃣ Repository Safety
```bash
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## 3️⃣ Platform and Toolchain
```bash
cat /etc/os-release
apt --version
dpkg --version | head -n 2
```

## 4️⃣ Inventory and Sources
```bash
dpkg-query -W -f='${binary:Package}	${Version}
' | head -n 30
find /etc/apt -maxdepth 3 -type f \( -name '*.list' -o -name '*.sources' \) -print
apt-cache policy
```

## 5️⃣ Version and Hold Review
```bash
apt-cache policy bash openssl curl
apt-mark showhold
apt list --upgradable 2>/dev/null | head -n 30
```

## 6️⃣ Simulate Change Only
```bash
apt-get -s upgrade | tee evidence/day006/upgrade-simulation.txt
apt-get -s autoremove | tee evidence/day006/autoremove-simulation.txt
```
Do not remove `-s` and do not use sudo.

## 7️⃣ Package Ownership and Integrity
```bash
dpkg -S /bin/bash
dpkg-query -L bash | head -n 25
dpkg -V bash | tee evidence/day006/bash-integrity.txt || true
dpkg-query -s bash | sed -n '1,35p'
```

## 8️⃣ Controlled Negative Tests
```bash
apt-cache show finbank-day006-package-does-not-exist > evidence/day006/missing-package.txt 2>&1 || true
cat evidence/day006/missing-package.txt
apt-cache policy finbank-day006-package-does-not-exist | tee evidence/day006/missing-policy.txt
```

## 9️⃣ Generate Reports and Validate
```bash
chmod +x scripts/day006/*.sh
./scripts/day006/collect-package-inventory.sh
./scripts/day006/simulate-patch-plan.sh
./scripts/day006/verify-package-integrity.sh
./scripts/day006/validate-day006.sh
```

> [!CAUTION]
> Never run installation, upgrade, autoremove, repository or dpkg-repair commands during this shared-host learning lab.

---

**🏦 FinBank AI DevSecOps · Day 006 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

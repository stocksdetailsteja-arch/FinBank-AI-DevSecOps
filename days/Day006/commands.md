[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Day 006 Command Center

## 🧭 Repository Safety
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## 📦 Platform and Inventory
```bash
cat /etc/os-release
apt --version
dpkg --version | head -n 2
dpkg-query -W -f='${binary:Package}	${Version}
' | head -n 25
dpkg -l | sed -n '1,30p'
```

## 🗃️ Sources and Policy
```bash
find /etc/apt -maxdepth 3 -type f -name '*.list' -o -name '*.sources'
apt-cache policy
apt-cache policy bash openssl curl
apt-mark showhold
```

## 🧪 Read-Only Planning
```bash
apt-get -s upgrade
apt-get -s autoremove
apt list --upgradable 2>/dev/null
```

## 🔍 Package Ownership and Integrity
```bash
dpkg -S /bin/bash
dpkg-query -L bash | head -n 25
dpkg -V bash || true
dpkg-query -s bash | sed -n '1,35p'
```

## ✅ Quality Gates
```bash
bash -n scripts/day006/collect-package-inventory.sh
bash -n scripts/day006/simulate-patch-plan.sh
bash -n scripts/day006/verify-package-integrity.sh
bash -n scripts/day006/validate-day006.sh
git diff --check
```

---

**🏦 FinBank AI DevSecOps · Day 006 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

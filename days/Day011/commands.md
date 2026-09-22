[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Day 011 Command Center

## 🧭 Repository Safety
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## 👥 Identity Audit
```bash
getent passwd | head -n 30
getent group | head -n 30
id
getent group sudo
awk -F: '$3>=1000 {print $1,$3,$7}' /etc/passwd
```

## 🔐 Effective Privilege Review
```bash
sudo -l
sudo -V | head -n 5
ls -ld /etc/sudoers /etc/sudoers.d
```

## 📏 Limits and Capacity
```bash
ulimit -a
cat /proc/$$/limits
df -hT
df -ihT
findmnt -o TARGET,SOURCE,FSTYPE,OPTIONS | head -n 30
```

## ⚙️ Service Governance
```bash
systemctl --failed --no-pager
systemctl list-units --type=service --state=running --no-pager | head -n 25
```

## ✅ Quality Gates
```bash
for script in scripts/day011/*.sh; do bash -n "$script"; done
./scripts/day011/validate-day011.sh
git diff --check
```

---

**🏦 FinBank AI DevSecOps · Day 011 of 120**
*Learn · Audit · Validate · Secure · Document · Improve*

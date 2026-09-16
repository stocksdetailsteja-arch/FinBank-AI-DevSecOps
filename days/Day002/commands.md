[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🐧 Day 002 Command Center

## 🧭 Safety Gate
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## 🖥️ Architecture and Boot
```bash
uname -srmo
cat /etc/os-release
ps -p 1 -o pid,comm,args
systemctl get-default
systemd-analyze 2>/dev/null || true
systemd-analyze critical-chain 2>/dev/null | head -n 25 || true
```

## 🌳 Filesystem Hierarchy
```bash
ls -ld / /etc /var /run /tmp /proc /sys /dev /home /opt /srv /usr /boot
findmnt
findmnt -T "$HOME"
lsblk -f
df -hT
df -ih
```

## 🧭 Paths and Links
```bash
pwd
realpath .
readlink -f .
namei -l "$HOME/Projects/FinBank-AI-DevSecOps"
stat README.md
```

## 🔍 Safe Discovery
```bash
find labs/day002 -maxdepth 3 -type f -printf '%M %u:%g %p
' | sort
find evidence/day002 -maxdepth 2 -type f -printf '%s %p
' | sort
```

## ✅ Quality Gates
```bash
bash -n scripts/day002/linux-filesystem-inventory.sh
git diff --check
git status --short
```

---

**🏦 FinBank AI DevSecOps · Day 002 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

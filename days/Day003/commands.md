[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Day 003 Command Center

## 🧭 Repository Safety
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## 👤 Identity Inspection
```bash
whoami
id
id -u
id -g
groups
getent passwd "$(whoami)"
getent group "$(id -gn)"
```

## 🔐 Permission Inspection
```bash
stat -c '%A %a %U:%G %n' labs/day003/* 2>/dev/null || true
namei -l "$HOME/Projects/FinBank-AI-DevSecOps"
umask
```

## 🧾 ACL Capability
```bash
command -v getfacl || true
command -v setfacl || true
getfacl -p labs/day003/collaboration 2>/dev/null || true
```

## ⚠️ Special-Bit Read-Only Inspection
```bash
find /usr/bin -xdev -perm -4000 -type f -printf '%M %u:%g %p
' 2>/dev/null | head -n 20
find /usr/bin -xdev -perm -2000 -type f -printf '%M %u:%g %p
' 2>/dev/null | head -n 20
stat -c '%A %a %U:%G %n' /tmp
```

## ✅ Quality Gates
```bash
bash -n scripts/day003/linux-identity-audit.sh
bash -n scripts/day003/validate-day003.sh
git diff --check
git status --short
```

---

**🏦 FinBank AI DevSecOps · Day 003 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🐧 Command Center

## 🧭 Repository Safety
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote -v
git status --short
```
## 🛡️ ShopSphere Read-Only Check
```bash
git -C ~/Projects/ShopSphere rev-parse --show-toplevel
git -C ~/Projects/ShopSphere remote -v
git -C ~/Projects/ShopSphere status --short
```
## 🐧 Linux Baseline
```bash
whoami
id
hostnamectl
uname -a
cat /etc/os-release
nproc
free -h
df -hT
df -ih
ip -brief address
ip route
ss -lntup
```
## 🧰 Toolchain
```bash
git --version
aws --version
docker --version 2>/dev/null || true
java -version 2>&1 | head -n 3
mvn -version 2>/dev/null | head -n 3 || true
terraform version 2>/dev/null | head -n 2 || true
kubectl version --client 2>/dev/null || true
```
## 🔍 Quality Gate
```bash
git diff --check
git diff --cached --check
git diff --cached --stat
```

---

**🏦 FinBank AI DevSecOps · Day 001 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

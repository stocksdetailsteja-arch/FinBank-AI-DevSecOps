[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Hands-On Lab Runbook

## 🛑 Safety Gate
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git remote get-url origin
git branch --show-current
```
## 1️⃣ Generate Baseline
```bash
chmod +x scripts/day001/collect-baseline.sh
./scripts/day001/collect-baseline.sh
sed -n '1,220p' evidence/day001/system-baseline.md
```
## 2️⃣ Sensitive-Pattern Scan
```bash
grep -Ein 'password|secret|token|access.key|private.key' evidence/day001/system-baseline.md || true
```
## 3️⃣ Verify Isolation
```bash
printf 'FinBank: '; git rev-parse --show-toplevel
printf 'ShopSphere: '; git -C ~/Projects/ShopSphere rev-parse --show-toplevel
git remote -v
git -C ~/Projects/ShopSphere remote -v
```
## 4️⃣ AWS Non-Destructive Check
```bash
aws sts get-caller-identity
aws configure list
```
Do not capture keys or account identifiers.
## 5️⃣ Safe Failure
```bash
git remote get-url shopSphereWrongName
```
Expected: `error: No such remote`.
## 6️⃣ Acceptance
```bash
git diff --check
find days/Day001 -maxdepth 1 -type f -printf '%f
' | sort
```

---

**🏦 FinBank AI DevSecOps · Day 001 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

<p align="center">
  <a href="README.md">🏠 Overview</a> • <a href="concepts.md">🧠 Concepts</a> • <a href="lab_guide.md">🧪 Lab</a> • <a href="troubleshooting.md">🚨 Troubleshooting</a> • <a href="interview_questions.md">🎯 Interview</a> • <a href="screenshot_checklist.md">📸 Evidence</a>
</p>

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
## 2️⃣ Scan for Sensitive Patterns
```bash
grep -Ein 'password|secret|token|access.key|private.key' evidence/day001/system-baseline.md || true
```
Expected result: no real secret material.
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
Record the absence or type of credentials, but never capture keys or account identifiers.
## 5️⃣ Safe Failure Injection
```bash
git remote get-url shopSphereWrongName
```
Expected: `error: No such remote`. This is safe because it performs no write.
## 6️⃣ Acceptance
```bash
git diff --check
find days/Day001 -maxdepth 1 -type f -printf '%f
' | sort
```
---

<p align="center"><strong>🏦 FinBank AI DevSecOps • Day 001 of 120</strong><br><sub>Learn • Build • Validate • Secure • Document • Improve</sub></p>

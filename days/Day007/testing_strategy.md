[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Day 007 Testing Strategy

## ✅ Positive Tests
- Correct repository and remote
- PID 1/systemd baseline generated
- User transient service becomes active
- Journal contains expected demo message
- Service stops and becomes inactive
- Baseline report generated

## ❌ Negative Tests
- Controlled user service exits with code 42
- Failure journal is captured
- Validator detects leftover demo service
- Secret scan passes

## 🔁 Regression Tests
- Day 001 through Day 006 remain present
- ShopSphere remains unchanged
- No system unit, target or journal configuration changed
- No ZIP or temporary directory staged

## 🧾 Acceptance
```bash
bash scripts/day007/validate-day007.sh
git diff --check
git status --short
```

---

**🏦 FinBank AI DevSecOps · Day 007 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

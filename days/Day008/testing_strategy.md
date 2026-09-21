[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Day 008 Testing Strategy

## ✅ Positive Tests
- Correct repository and remote
- journald active state recorded
- Synthetic INFO/WARNING/ERROR events generated
- Identifier and priority filtering returns events
- Analysis report and baseline generated
- No system configuration changed

## ❌ Negative Tests
- Controlled error appears only in intended evidence
- Validator detects missing generated artifacts
- Secret-pattern scan passes
- Raw unrelated logs are not committed

## 🔁 Regression Tests
- Day 001 through Day 007 remain present
- ShopSphere remains unchanged
- No journal vacuum, config edit, service stop or rotation action
- No ZIP or temporary extraction staged

## 🧾 Acceptance
```bash
bash scripts/day008/validate-day008.sh
git diff --check
git status --short
```

---

**🏦 FinBank AI DevSecOps · Day 008 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

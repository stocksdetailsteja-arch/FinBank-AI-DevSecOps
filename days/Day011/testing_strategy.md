[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Day 011 Testing Strategy

## ✅ Positive Tests
- Correct repository and origin
- User/group report generated
- Sudo review report generated
- Limits/capacity report generated
- Service baseline included
- All scripts pass syntax

## ❌ Negative Tests
- Unsupported argument returns exit 64
- Validator detects missing reports
- Secret-pattern scan remains clean
- No policy/system mutation occurs

## 🔁 Regression Tests
- Day001 through Day010 preserved
- ShopSphere unchanged
- No account/group/sudo/PAM/limit/service changes
- No ZIP or temporary extraction staged

## 🧾 Acceptance
```bash
bash scripts/day011/validate-day011.sh
git diff --check
git status --short
```

---

**🏦 FinBank AI DevSecOps · Day 011 of 120**
*Learn · Audit · Validate · Secure · Document · Improve*

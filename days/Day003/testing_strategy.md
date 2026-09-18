[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Day 003 Testing Strategy

## ✅ Positive Tests
- Correct repository and remote
- Identity report generated without shadow data
- Private file is owner-readable after recovery
- Collaboration directory has SGID
- Shared-drop directory has sticky bit
- Hard security checks pass

## ❌ Negative Tests
- Mode `000` denies owner read
- Other-access bits remain absent on private data
- Validation rejects world-writable regular files
- Validation rejects tracked private-key patterns

## 🔁 Regression Tests
- ShopSphere remains unchanged
- Day 001 and Day 002 directories remain present
- No system account or sudo configuration changed
- ZIP and temporary extraction paths are not staged

## 🧾 Acceptance Command
```bash
bash scripts/day003/validate-day003.sh
git diff --check
git status --short
```

## 🎯 Definition of Done
All positive, negative and recovery checks are documented. Screenshots are redacted. The staged diff contains only Day 003 assets.

---

**🏦 FinBank AI DevSecOps · Day 003 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

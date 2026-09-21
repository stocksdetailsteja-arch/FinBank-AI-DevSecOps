[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Day 005 Testing Strategy

## ✅ Positive Tests
- Correct FinBank root and remote
- Loopback interface present
- Default route recorded
- `localhost` resolves
- HTTP service binds only to `127.0.0.1:18080`
- Health response is `FINBANK_DAY005_OK`
- Service stops and socket disappears

## ❌ Negative Tests
- Unused local port produces a controlled connection failure
- Reserved invalid DNS name does not resolve
- Validator detects a running leftover service
- Validator rejects secret-like evidence

## 🔁 Regression Tests
- Day 001 through Day 004 remain present
- ShopSphere remains unchanged
- No route, DNS, firewall or security-group modification
- No ZIP or temporary extraction path staged

## 🧾 Acceptance
```bash
bash scripts/day005/validate-day005.sh
git diff --check
git status --short
```

---

**🏦 FinBank AI DevSecOps · Day 005 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

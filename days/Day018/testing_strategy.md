[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Security Testing, Negative Validation & Regression

## Positive Tests

- identity, sudo, SSH, file, ACL, MAC, and kernel evidence is generated
- all scripts pass syntax
- fixture remains mode `600`
- decision record and completed lab notes exist

## Negative Tests

- unsupported argument returns exit `64`
- validator detects fixture mode drift
- validator detects HTML, escaped entities, blank forms, and secret patterns
- no raw security inventory or ZIP is staged

## Regression Tests

Days001 through Day017 remain present, ShopSphere remains clean, no package/service/policy/cloud change occurs, and Git whitespace quality passes.

## Production Extension

Add canary access tests, recovery-path validation, configuration syntax tests, unauthorized-access tests, application and banking checks, monitoring validation, and rollback exercises.

---

**🏦 FinBank AI DevSecOps · Day 018 of 120**
*Harden · Verify · Govern · Detect · Recover · Improve*

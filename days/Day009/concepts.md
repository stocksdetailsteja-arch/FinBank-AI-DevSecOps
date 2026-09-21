[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Bash Engineering Concepts

## 🗺️ Concept Matrix

| Concept | Purpose | Common defect |
|---|---|---|
| shebang | selects interpreter | wrong shell assumptions |
| strict mode | fails early on selected errors | misunderstood pipelines/unset values |
| quoting | preserves argument boundaries | word splitting and glob expansion |
| parameter expansion | safe defaults and validation | accidental empty destructive path |
| exit code | machine-readable result | inconsistent automation behavior |
| trap | cleanup and signal handling | leaked temporary files |
| function | reusable behavior | hidden global state |
| array | preserves multiple values | unsafe string lists |
| subshell | isolates environment/change | lost variable updates |
| shellcheck mindset | static defect prevention | fragile scripts |

## 🛡️ Recommended Baseline
```bash
#!/usr/bin/env bash
set -euo pipefail
```
Strict mode is helpful but not magical. Commands intentionally allowed to fail need explicit handling. Pipelines, conditionals and cleanup require design.

## 🔐 Quoting
Quote variable expansions unless intentional splitting is required. Use arrays for argument lists. Never build a shell command from untrusted text and pass it to `eval`.

## 🚦 Exit Codes
Use `0` for success and documented nonzero values for validation, dependency or processing failure. Callers should consume exit status rather than scrape prose.

## 🧹 Cleanup
Create temporary paths with `mktemp -d`, restrict permissions, and register cleanup with `trap`. Cleanup must not hide the original exit result.

## 🔁 Idempotency
Repeated execution should produce the same safe state or detect that work is already complete. Banking operations also need business-level idempotency keys and authoritative state checks.

## 📋 Logging
Include UTC timestamp, level, script component, correlation ID and safe message. Do not log secrets, account data or complete payloads.

> [!TIP]
> Prefer a small Bash wrapper around reliable tools. Move complex data transformation or long-lived application logic to a language with stronger types and testing support.

---

**🏦 FinBank AI DevSecOps · Day 009 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

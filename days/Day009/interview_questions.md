[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Senior Bash Interview Questions & Answers

> [!NOTE]
> Original enterprise practice content, not leaked employer questions.

## 1️⃣ Why quote variables?
Quoting preserves each expansion as one argument and prevents unintended splitting and filename expansion.

## 2️⃣ What does `set -euo pipefail` do?
It enables selected fail-fast behaviors for command errors, unset variables and pipelines. It still requires deliberate error handling.

## 3️⃣ `$@` vs `$*`?
Inside double quotes, `"$@"` preserves individual arguments; `"$*"` joins them using the first IFS character.

## 4️⃣ Why use arrays?
Arrays preserve element boundaries and safely build argument lists without parsing strings.

## 5️⃣ How do you return data and status?
Use stdout/file for data and the function/process exit code for status. Keep diagnostics on stderr.

## 6️⃣ What is a trap?
A handler for shell exit or signals, commonly used for cleanup and termination behavior.

## 7️⃣ Subshell vs current shell?
Parentheses execute in a subshell and isolate changes; braces execute in the current shell.

## 8️⃣ Why avoid `eval`?
It reparses constructed text as shell code, creating injection and quoting risks.

## 9️⃣ How do you safely process filenames?
Use arrays, `find -print0` with null-delimited reads, and quote every path.

## 🔟 How do you design idempotent automation?
Check authoritative state, use deterministic outputs, avoid repeated side effects and record completion safely.

## 1️⃣1️⃣ How do you test Bash?
Syntax checks, static analysis, unit functions, fixtures, negative cases, exit-code assertions and isolated integration tests.

## 1️⃣2️⃣ When should Bash not be used?
Complex data models, concurrency, long-lived services, large transformations or logic needing stronger typing and libraries.

## 1️⃣3️⃣ How do you secure credentials?
Do not pass them in command lines or logs. Use approved credential mechanisms, least privilege and short-lived access.

## 1️⃣4️⃣ Banking reconciliation script fails midway. Response?
Preserve evidence, avoid blind rerun, identify completed boundaries, verify authoritative records and resume idempotently.

## 1️⃣5️⃣ What makes a production-ready script?
Clear contract, validation, strict quoting, observability, explicit exits, cleanup, idempotency, tests, security and documented rollback.

---

**🏦 FinBank AI DevSecOps · Day 009 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

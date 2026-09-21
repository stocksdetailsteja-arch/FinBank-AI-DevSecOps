[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Production Bash Troubleshooting

> [!TIP]
> Capture the exact command, arguments, environment, exit code, stderr and shell version before changing the script.

## 1. Works Interactively but Fails in Automation
Compare PATH, current directory, shell, environment, permissions, TTY assumptions and credentials source.

## 2. Spaces Break File Processing
Quote expansions and use arrays or null-delimited input. Avoid parsing `ls`.

## 3. `set -e` Exits Unexpectedly
Understand conditional, pipeline and subshell contexts. Handle expected failures explicitly.

## 4. Pipeline Hides Failure
Use `set -o pipefail` and inspect component statuses when needed.

## 5. Temporary Files Remain
Use `mktemp`, restrictive permissions and a trap that preserves the original exit code.

## 6. Script Deletes Wrong Path
Validate nonempty canonical paths, enforce an allowlisted root, add dry-run and refuse `/` or unexpected locations.

## 7. Service Check Reports False Failure
Distinguish inactive, failed, unknown and unavailable systemd contexts. Return documented statuses.

## 8. Log Parser Counts Wrong
Avoid fragile whitespace parsing. Define input schema, anchor patterns and test duplicates/malformed lines.

## 9. Secret Appears in Trace Output
Never enable `set -x` around credentials. Use protected inputs and redact logs.

## 10. Scheduled Script Runs Twice
Use idempotency, locking, bounded execution and authoritative state. For payments, never rely only on process locks.

---

**🏦 FinBank AI DevSecOps · Day 009 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

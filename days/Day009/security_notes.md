[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Shell Script Security

## 🛡️ Controls
- Validate type, format and allowlisted values
- Quote expansions and use arrays
- Avoid `eval` and dynamic shell code
- Use absolute or validated command paths
- Restrict temporary files and outputs
- Never expose secrets in argv, logs or traces
- Separate stdout data from stderr diagnostics
- Use least privilege and no default sudo
- Add dry-run for impactful operations
- Scan scripts and evidence before commit

## ⚠️ Threat Matrix
| Threat | Example | Control |
|---|---|---|
| command injection | untrusted text in `eval` | structured arguments and allowlists |
| path traversal | user-controlled output path | canonical path and root boundary |
| symlink attack | predictable temp file | `mktemp` and permissions |
| secret leakage | token in `set -x` | tracing discipline and redaction |
| destructive expansion | empty variable in `rm` | strict validation and safe roots |
| privilege abuse | broad sudo script | minimal dedicated permissions |

> [!WARNING]
> Never commit shell history, environment dumps, credential files, production payloads or full customer identifiers.

---

**🏦 FinBank AI DevSecOps · Day 009 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Linux Filesystem Security Controls

## 🛡️ Control Principles
- Least privilege for users, groups and services
- Controlled ownership and parent-directory traversal
- No secrets in source control or shared temporary paths
- Separate configuration, runtime state, logs and persistent data
- Tamper-aware centralized audit strategy
- Explicit retention and secure deletion requirements

## ⚠️ Threat Matrix
| Threat | Example | Control |
|---|---|---|
| path traversal | user-controlled `../` | canonicalization and allowlisted roots |
| symlink attack | privileged process follows replaced link | safe file APIs and ownership validation |
| world-readable secret | credential placed in `/tmp` | secret manager and restrictive access |
| log tampering | service edits audit record | centralized restricted audit path |
| recursive permission error | broad `chmod -R` | narrow reviewed changes |
| uncontrolled mount | executable content from unsafe source | mount policy and integrity checks |

> [!WARNING]
> File permissions are only one layer. Parent directories, ACLs, mount options, service identity and mandatory access controls also matter.

---

**🏦 FinBank AI DevSecOps · Day 002 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

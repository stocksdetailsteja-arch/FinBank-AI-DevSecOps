[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Advanced Administration Concepts

## 🗺️ Concept Matrix

| Concept | Meaning | Production risk |
|---|---|---|
| UID/GID | numeric identity ownership | orphaned or conflicting ownership |
| system account | non-human service identity | interactive misuse |
| supplementary group | additional authorization scope | privilege accumulation |
| sudo policy | delegated privileged commands | unrestricted escalation |
| PAM | pluggable authentication/account/session stack | lockout or bypass |
| shell limit | per-session resource ceiling | exhaustion or false failures |
| systemd limit | unit resource boundary | service instability |
| inode | filesystem object metadata | no-new-file failure despite free GB |
| mount option | filesystem behavior/security control | execution or tampering exposure |
| audit trail | attributable admin activity record | repudiation or evidence gap |

## 👥 Identity Lifecycle
Every human needs a named identity. Service identities should have explicit purpose, owner, non-interactive shell when appropriate, minimal groups and review dates. File ownership must be reviewed before identity removal.

## 🔐 Sudo Governance
Prefer role/command-scoped delegation over broad root shells. Use `visudo` for validated changes in real environments. Day011 only inspects effective policy.

## 🧩 PAM Awareness
PAM stacks commonly contain authentication, account, password and session modules. Order and control flags matter. Incorrect edits can lock out administrators, so recovery access and peer review are mandatory.

## 📏 Resource Limits
Limits exist at shell, process, user, kernel and systemd-unit layers. Diagnose the effective layer rather than increasing limits blindly.

## 💽 Capacity
Disk bytes, inodes, mount state, open deleted files and log growth can independently cause outages. Capacity checks must cover all dimensions.

## 🧾 Auditability
Record requester, approver, identity, command scope, target, timestamp, outcome and access expiry. Logs must not contain credentials or regulated data.

> [!TIP]
> Administration is governance plus technical execution. A command that works can still violate access, audit or recovery requirements.

---

**🏦 FinBank AI DevSecOps · Day 011 of 120**
*Learn · Audit · Validate · Secure · Document · Improve*

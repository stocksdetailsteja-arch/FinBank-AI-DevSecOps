[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Linux Security Hardening Deep Concepts

## Identity and Authorization Model

| Layer | Purpose | Failure Risk | Example Control |
|---|---|---|---|
| Identity | names a human or workload | shared or stale account | unique account and owner |
| Authentication | proves identity | stolen credential | keys, MFA, PAM controls |
| Authorization | grants action | excessive privilege | groups, ACLs, sudo |
| Session | establishes context | untracked access | PAM session and audit |
| Accountability | records action | repudiation | centralized audit evidence |

## UID and GID Ownership
The kernel evaluates numeric identifiers, not friendly names. Reusing a UID can unintentionally grant access to files still owned by the old numeric identity. Deprovisioning therefore requires ownership, scheduled job, key, token, and process review before deletion.

## Service Accounts
Service identities require a documented purpose, named owner, minimal group membership, non-interactive shell where compatible, no shared human use, protected credentials, and periodic certification.

## sudo Governance
Sudo is command delegation, not a general excuse for permanent root access. Mature policy constrains user/group, host, run-as identity, command path, arguments where feasible, authentication, logging, owner, and expiry.

## PAM
PAM stacks commonly cover authentication, account, password, and session functions. Module order and control flags affect outcome. Remote PAM changes without tested recovery can lock out every administrator.

## SSH Hardening
Effective security depends on authentication method, root policy, forwarding, idle behavior, allowed identities, listening addresses, cryptographic policy, network controls, and recovery access. Inspect effective settings with `sshd -T` instead of reading only one file.

## File Modes and ACLs
Traditional owner/group/other modes combine with POSIX ACLs. The ACL mask can limit named entries. Directory execute permission controls traversal rather than file execution.

## SUID and SGID
Set-ID executables run with the file owner's or group's effective identity. Inventory alone is not a vulnerability verdict; verify package ownership, purpose, integrity, exploitability, and safer alternatives.

## Mandatory Access Control
AppArmor can restrict a process beyond discretionary file permissions. Enforcing, complain, disabled, and unconfined states represent different risk and operational behavior.

## Banking Principle
Security hardening must preserve confidentiality, integrity, availability, auditability, segregation of duties, and recoverability. Disabling a control to restore service can create a larger banking incident.

---

**🏦 FinBank AI DevSecOps · Day 018 of 120**
*Harden · Verify · Govern · Detect · Recover · Improve*

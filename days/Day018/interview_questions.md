[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Advanced 5+ Years Linux Security Interview Mastery

> [!NOTE]
> Twenty senior, architecture, incident, and banking questions with production reasoning and trade-offs.

### 1. UID versus username?
The kernel enforces numeric UID ownership; the username is a mapping. UID reuse can transfer effective file access unexpectedly.

### 2. Primary versus supplementary groups?
The primary group commonly becomes the group owner of new files; supplementary groups grant additional authorization. Effective membership is session-specific.

### 3. How govern service accounts?
Define owner, purpose, shell, groups, credential source, interactive-login policy, allowed hosts, lifecycle, monitoring, and review date.

### 4. Why avoid shared root accounts?
They weaken attribution, lifecycle control, MFA, revocation, monitoring, and incident reconstruction.

### 5. What is least-privilege sudo?
Delegate only required commands, hosts, run-as identities, and duration. Avoid broad shells and permanent unrestricted rules.

### 6. Why use `sudo -l`?
It shows effective current-user policy after matching logic. Reading one policy fragment may not reveal aliases, includes, or applicable rules.

### 7. Explain PAM functions.
Authentication proves identity; account checks access conditions; password manages credential changes; session establishes and tears down context.

### 8. Why is PAM change risky?
Module order and control flags can lock out every access path. Changes require canary, peer review, console recovery, and rollback.

### 9. Why use `sshd -T`?
It reports effective SSH settings after defaults and includes. It is valuable for baseline and post-change validation.

### 10. Password auth versus key auth?
Managed keys reduce password guessing and reuse risk, but key lifecycle, theft, scope, passphrases, MFA, and revocation still require governance.

### 11. File modes versus ACLs?
Modes define owner/group/other access; ACLs add named users/groups and a mask. Effective access requires both plus path traversal.

### 12. What is the ACL mask?
It limits effective permissions for named users, named groups, and the owning group class, which can explain apparent-but-denied access.

### 13. SUID/SGID security risk?
A vulnerable or untrusted set-ID executable can execute with elevated effective identity. Verify purpose, package integrity, exposure, and alternatives.

### 14. AppArmor enforcing versus complain?
Enforcing blocks and logs violations; complain logs without blocking. Unconfined workloads receive no profile restriction.

### 15. Design privileged access for 200 banking servers.
Use named identities, MFA, controlled access paths, just-in-time roles, scoped sudo, session/audit evidence, break-glass governance, recertification, and automated removal.

### 16. SSH hardening causes production lockout. Response?
Preserve active sessions, use approved console recovery, validate effective config, restore known-good policy, and complete incident/control review.

### 17. Support engineer requests `NOPASSWD: ALL`.
Reject the unrestricted default. Identify exact tasks, commands, run-as identity, target hosts, duration, logging, approval, and emergency procedure.

### 18. Payment service needs an AppArmor exception.
Use denial evidence to define the narrowest operation, test in canary, validate payments/audit, monitor, and retain rollback and expiry.

### 19. What proves security hardening succeeded?
Control is effective, access/recovery remain functional, service and banking validation pass, evidence exists, no new exposure appears, and exceptions are owned.

### 20. Architect follow-up questions?
Ask about identity source, MFA, PAM, keys, privilege model, service accounts, MAC, audit, retention, break-glass, recovery, compliance, automation, and ownership.

---

**🏦 FinBank AI DevSecOps · Day 018 of 120**
*Harden · Verify · Govern · Detect · Recover · Improve*

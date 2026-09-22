[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Senior Linux Administration Interview Questions & Answers

> [!NOTE]
> Original enterprise practice material, not leaked employer questions.

## 1️⃣ UID vs username?
The kernel uses numeric UID ownership; names are mappings. Reused UIDs can transfer access unexpectedly.

## 2️⃣ Primary vs supplementary groups?
The primary group is the default group for new files; supplementary groups grant additional memberships.

## 3️⃣ Why avoid shared admin accounts?
They weaken attribution, lifecycle control, MFA and accountability.

## 4️⃣ What is least-privilege sudo?
Delegating only required commands, runas identity, hosts and parameters instead of broad root shells.

## 5️⃣ Why use `visudo`?
It validates sudoers syntax and protects against conflicting edits in real administration workflows.

## 6️⃣ Explain PAM stacks.
PAM evaluates ordered modules across authentication, account, password and session functions using control flags.

## 7️⃣ Soft vs hard limits?
A user/process may lower or raise a soft limit up to the hard limit; the hard limit is the ceiling for that context.

## 8️⃣ Why can systemd limits differ from shell limits?
Services receive limits from unit/manager configuration and do not necessarily inherit interactive-shell settings.

## 9️⃣ Disk space vs inode exhaustion?
Bytes can remain available while no inodes remain for new files. Both must be monitored.

## 🔟 What are dangerous mount options?
Risk depends on workload, but unnecessary executable, device or set-ID behavior should be restricted where compatible.

## 1️⃣1️⃣ How do you deprovision safely?
Disable access, terminate/transfer sessions, review ownership/jobs/keys/tokens, preserve evidence, reassign data and remove only after approval.

## 1️⃣2️⃣ How do you review sudo access?
Map policy to owner, business need, command scope, target, expiry, logs and periodic certification.

## 1️⃣3️⃣ What is break-glass access?
Emergency privileged access that is separately protected, monitored, time-bound and reviewed after use.

## 1️⃣4️⃣ Banking server has orphaned UID-owned files. Response?
Freeze unsafe changes, identify prior owner and data purpose, map ownership through approved governance and validate application access.

## 1️⃣5️⃣ What proves admin recovery?
Restored access, correct ownership/policy, healthy service/business checks, complete audit evidence and removed temporary privilege.

---

**🏦 FinBank AI DevSecOps · Day 011 of 120**
*Learn · Audit · Validate · Secure · Document · Improve*

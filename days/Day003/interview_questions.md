[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Senior MNC-Style Interview Questions & Answers

> [!NOTE]
> These are original enterprise-style practice questions, not leaked or verbatim questions from TCS, Deloitte, LTIMindtree, EY or any employer.

## 1️⃣ What happens when Linux checks file access?
The kernel uses process credentials and resolves every parent directory. It evaluates ownership, group or ACL entries, the ACL mask and other permissions, plus applicable mount and mandatory-security controls.

## 2️⃣ What is the difference between UID and username?
The kernel uses numeric UID. The username is a mapping. Reusing an old UID can unintentionally grant access to files still owned by that number.

## 3️⃣ Why does a directory need execute permission?
Execute permits traversal and access to named entries. Read lists names. Write permits creating, deleting and renaming entries subject to other controls.

## 4️⃣ Explain `640` and `750`.
`640` gives owner read/write, group read and no other access. `750` gives owner full access, group read/traverse and no other access. File and directory semantics differ.

## 5️⃣ How does umask work?
Umask removes bits from base creation modes, commonly `666` for files and `777` for directories. It does not add permissions and ACLs may influence results.

## 6️⃣ Why might group membership not take effect immediately?
Existing processes retain credentials established at session start. Confirm with `id` and start a new approved session or restart the affected service.

## 7️⃣ What is the ACL mask?
The mask limits effective permissions of named users except owner and the group-class entries. It can make a visible ACL entry less permissive in practice.

## 8️⃣ SUID, SGID and sticky bit differences?
SUID affects effective file-owner identity during executable launch. SGID affects group identity for executables and group inheritance for directories. Sticky bit restricts deletion in shared directories.

## 9️⃣ How would you delegate one privileged operational command?
Use a reviewed sudo rule constrained by command, arguments where feasible, identity and host, with logging and no broad shell escape. Test through `visudo` and a rollback path.

## 🔟 How do you troubleshoot permission denied without `chmod 777`?
Capture effective identity, canonical path, parent modes, ownership, ACLs, mount flags, mandatory controls and the exact operation. Reproduce safely, apply the narrowest fix and validate negative access.

## 1️⃣1️⃣ Why are service accounts different from human accounts?
They should have scoped purpose, noninteractive access where appropriate, managed credentials and distinct audit ownership. Shared identities weaken attribution.

## 1️⃣2️⃣ Banking scenario: payment service can edit audit logs. What is wrong?
It violates separation of duties and weakens tamper resistance. Use a dedicated append/forward path with separate ownership and tightly controlled read access.

## 1️⃣3️⃣ What risk arises from deleting a user but leaving files?
Files remain owned by the numeric UID. Future UID reuse can transfer unintended access. Find and disposition orphaned ownership under a controlled process.

## 1️⃣4️⃣ How do capabilities compare with SUID root?
Capabilities can grant narrower kernel privileges than full root identity, reducing scope. They still require inventory, justification, integrity checks and monitoring.

## 1️⃣5️⃣ How do you validate a permission fix?
Test intended positive access and prohibited negative access using the real service identity, then inspect logs and dependent behavior. A successful owner test alone is insufficient.

---

**🏦 FinBank AI DevSecOps · Day 003 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

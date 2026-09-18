[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Linux Identity & Authorization Concepts

## 🗺️ Concept Matrix

| Concept | Meaning | Risk when misunderstood |
|---|---|---|
| UID | numeric user identity used by kernel | name changes do not change ownership identity |
| GID | numeric group identity | incorrect membership grants access |
| primary group | default group for created files | unexpected collaboration behavior |
| supplementary groups | additional authorization memberships | stale or excessive privilege |
| mode bits | read, write, execute for owner/group/other | overexposure or outage |
| umask | removes default permission bits | insecure default creation |
| ACL | named user/group entries plus mask | hidden effective permission difference |
| sudo | policy-controlled privilege delegation | untracked root-equivalent access |
| SUID/SGID | execute with file owner/group identity | privilege escalation surface |
| sticky bit | restricts deletion in shared directory | unsafe shared workspace without it |

## 👤 Account Databases
`/etc/passwd` contains account metadata and is normally readable. `/etc/shadow` contains protected authentication information and must not be copied into evidence. `/etc/group` describes groups. NSS may resolve identities from additional sources, so `getent` is more complete than reading files directly.

## 🔢 Permission Mathematics

| Permission | Value | File meaning | Directory meaning |
|---|---:|---|---|
| read | 4 | read content | list names |
| write | 2 | modify content | create/delete/rename entries |
| execute | 1 | execute file | traverse/access entries |

Example: `640` means owner read/write, group read, others none. Directory access often requires execute even when read is present.

## 🎭 Effective Identity
A process uses real and effective IDs plus group memberships and capabilities. File names are resolved through parent directories before the target permission is checked. Diagnose the full path with `namei -l`.

## 🧾 ACL Evaluation
ACLs can grant permissions to named users and groups. The ACL mask limits effective named-user and group-class permissions. `ls -l` shows a trailing `+` when extended ACLs exist.

## 🚪 Sudo Governance
Sudo is policy-based delegation, not a generic fix. Use `sudo -l` to inspect allowed commands when authorized. Edit sudoers only through controlled mechanisms such as `visudo`, with least privilege and audit logging.

## ⚠️ Special Bits
- SUID on an executable runs with the file owner's effective UID.
- SGID on an executable uses the file's group; on a directory, new files inherit the directory group.
- Sticky bit on a shared directory restricts deletion to file owner, directory owner or privileged identity.

> [!WARNING]
> Never set SUID on scripts or copy privileged binaries into a lab. Day 003 performs read-only inspection of existing system examples.

---

**🏦 FinBank AI DevSecOps · Day 003 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

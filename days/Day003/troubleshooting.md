[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Production Troubleshooting Playbook

> [!TIP]
> Diagnose effective identity, every path component, mode bits, ACL mask, mount options, mandatory controls and the exact operation before changing permissions.

## 1. Permission Denied Even Though File Is `644`
A parent directory may lack execute permission. Use `namei -l` on the canonical path and reproduce with the service identity.

## 2. ACL Entry Shows `rwx` but Effective Access Is Lower
The ACL mask limits named user and group-class permissions. Inspect `getfacl` output and the `effective` annotation. Change the narrow ACL design, not broad other permissions.

## 3. Service Works in Shell but Fails Under systemd
Compare service user, groups, working directory, environment, supplementary-group refresh, sandboxing and path traversal. Restart may be required after group changes because a running process keeps its credential set.

## 4. New Files Receive the Wrong Group
Inspect the application's primary group, parent SGID bit, default ACL and application-created mode. Directory SGID can enforce collaborative group inheritance.

## 5. User Added to Group but Access Still Fails
The current login session may not include new supplementary groups. Verify with `id`; use a fresh approved session rather than weakening permissions.

## 6. Sudo Command Is Allowed but Redirection Fails
The shell performs `>` redirection before sudo runs the command. Use an approved tool such as `sudo tee` only if policy permits, and avoid overwriting sensitive files.

## 7. Shared Directory Users Delete Each Other's Files
Review sticky bit and directory ownership. A world-writable directory without sticky protection permits deletion based on directory write permission.

## 8. SUID Binary Appears Unexpectedly
Preserve metadata and package provenance. Compare package verification, hashes and change/audit logs. Do not execute or remove it blindly.

## 9. Recursive Ownership Change Breaks Services
Stop further change, determine affected paths from audit/change evidence, restore known ownership through package/configuration baselines and validate each dependent service.

## 10. AI Recommends `chmod -R 777`
Reject. Identify the exact denied operation and service identity, then adjust the narrowest owner, group, ACL or path component with rollback and validation.

---

**🏦 FinBank AI DevSecOps · Day 003 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

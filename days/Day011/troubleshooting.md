[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Production Administration Troubleshooting

> [!TIP]
> Preserve identity, policy, ownership, timestamps and active sessions before making access changes.

## 1. User Can Log In but Cannot Access Files
Check numeric ownership, primary/supplementary groups, mode bits, ACLs and path traversal permissions.

## 2. User Is in Group but Access Still Fails
Existing sessions may not have refreshed group membership. Verify `id`, ACLs and service-specific authorization.

## 3. Sudo Rule Appears Correct but Is Denied
Review effective `sudo -l`, host/user/runas/command matching, include order, aliases and exact command path.

## 4. Sudo Change Locks Out Administrators
Use approved recovery access, preserve evidence and restore a validated policy. Never edit sudoers with an unchecked editor in production.

## 5. PAM Change Blocks Login
Use console/break-glass recovery, inspect module order/control flags and revert through approved change. Avoid repeated remote lockout attempts.

## 6. Service Hits “Too Many Open Files”
Check process limits, systemd `LimitNOFILE`, kernel limits and actual descriptor growth. Fix leaks before raising ceilings.

## 7. Disk Has Free GB but Writes Fail
Check inode exhaustion, read-only mounts, quotas, reserved blocks and filesystem errors.

## 8. Deleted Log Still Consumes Space
A process may hold the deleted inode open. Identify with `lsof +L1`, then use an approved service-safe action.

## 9. Removed User Leaves Orphaned Files
Search numeric UID ownership and reassign through approved ownership mapping before final deprovisioning.

## 10. Privileged Activity Cannot Be Attributed
Eliminate shared accounts, enforce named access, centralize logs and review break-glass use.

---

**🏦 FinBank AI DevSecOps · Day 011 of 120**
*Learn · Audit · Validate · Secure · Document · Improve*

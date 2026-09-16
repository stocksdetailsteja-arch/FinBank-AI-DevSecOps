[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Production Troubleshooting Playbook

> [!TIP]
> First preserve impact and evidence. Then rank hypotheses and apply the least risky discriminator.

## 1. Filesystem Full but Expected Files Are Small
Check mount boundaries, deleted-but-open files, logs, container layers and sparse files. Use `df`, scoped `du`, `findmnt` and `lsof +L1` if available. Do not delete database or audit files before ownership and retention review.

## 2. Free Disk Space Exists but New Files Fail
Inspect inode use with `df -i`. Many tiny files can exhaust inodes. Mitigate generation, archive through approved retention and add inode alerts.

## 3. Service Fails After Reboot Because a File Is Missing
Determine whether the file was incorrectly placed under `/run` or `/tmp`. Restore from source-of-truth configuration and correct the state-placement design.

## 4. Configuration Change Has No Effect
Check the exact file path, symlink target, service override precedence, process arguments and whether reload/restart is required. Confirm with `systemctl cat` and process command line.

## 5. Read-Only Filesystem
Check `findmnt` options, kernel logs and storage health. Avoid forced remount until the reason is understood. Protect transaction integrity and declare service impact.

## 6. Permission Denied Despite Correct File Mode
Inspect every parent directory with `namei -l`, ownership, ACLs, mount flags, MAC controls and service identity. File mode alone is not the full decision.

## 7. AI Suggests `chmod -R 777`
Reject it. Determine required identity and operation, change only the narrow path, preserve least privilege, test rollback and record the corrected control.

---

**🏦 FinBank AI DevSecOps · Day 002 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Senior Storage Troubleshooting & RCA

## 1. Filesystem 100% Full During Payment Peak
**Symptoms:** writes fail, services return errors, database may switch state.
**Evidence:** `df`, growth paths, deleted-open files, logs, database errors, transaction state.
**Investigation:** identify bytes vs reserved blocks vs deleted-open files; locate owner and growth rate.
**Root Cause:** uncontrolled logs, data growth, retention failure, undersized volume, or leak.
**Fix:** approved space recovery or online expansion after snapshot/backup and compatibility checks.
**Rollback:** restore deleted artifacts where required; revert unsafe configuration.
**Prevention:** forecasts, multi-threshold alerts, quotas/retention, load tests.
**Banking Impact:** uncertain writes, failed postings, reconciliation backlog.

## 2. Free GB Exists but New Files Cannot Be Created
**Symptoms:** `No space left on device`; byte usage is moderate.
**Evidence:** `df -i`, file-count distribution, small-file producer.
**Investigation:** identify inode exhaustion and retention behavior.
**Root Cause:** small-file explosion or poor spool design.
**Fix:** safely archive/delete through owner-approved process; redesign storage pattern.
**Prevention:** inode alerts and object aggregation.
**Banking Impact:** audit/log loss and failed batch output.

## 3. Volume Expanded but Filesystem Size Unchanged
**Symptoms:** cloud/virtual device larger, `df` unchanged.
**Evidence:** device, partition, PV/LV, filesystem sizes.
**Investigation:** locate layer not expanded.
**Root Cause:** incomplete multi-layer expansion.
**Fix:** approved layer-by-layer expansion using filesystem-supported procedure.
**Rollback:** snapshots and abort criteria before change.
**Prevention:** tested runbook and post-change validation.

## 4. Filesystem Becomes Read-Only
**Symptoms:** writes fail despite free capacity.
**Evidence:** mount state, kernel logs, filesystem errors, device health.
**Investigation:** treat as integrity incident; preserve evidence and assess device/filesystem state.
**Fix:** approved recovery, repair, restore, or host replacement.
**Banking Impact:** transaction persistence uncertainty.

## 5. Storage Latency Increases Without Capacity Alert
Review IOPS, throughput, queue depth, cloud credits, noisy neighbors, backup jobs, database flush latency, and peak workload. Re-tier or isolate after evidence-based validation.

## 6. LVM Snapshot Fills
Monitor copy-on-write usage, stop relying on invalid snapshot, preserve origin, and remove/extend only through approved runbook. Snapshots are not long-term backups.

## 7. Wrong Mount Appears at Application Path
Validate source, target, boot configuration, data age, and process handles. Stop writes where safe, preserve both datasets, restore intended mount, and reconcile transactions.

## 8. Deleted File Still Uses Disk
Use approved open-file inspection, identify owning process, and rotate/restart safely. Never kill a banking process without transaction-impact validation.

---

**🏦 FinBank AI DevSecOps · Day 015 of 120**
*Discover · Govern · Validate · Protect · Optimize · Improve*

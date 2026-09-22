[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Advanced 5+ Years Linux Storage Interview Mastery

> [!NOTE]
> Twenty questions cover senior operations, architecture, banking incidents, and trade-offs.

## Senior Engineering
### 1. Explain the Linux storage stack.
Applications use filesystems mounted in the namespace; filesystems map data to block devices, optionally through partitions, LVM, RAID, encryption, and cloud/physical storage. Troubleshooting must inspect every layer because a change at one layer may not propagate automatically.

### 2. Why can `df` and `du` disagree?
`df` reports filesystem block allocation; `du` walks visible directory entries. Deleted-open files, sparse files, mount overlays, permissions, and reserved blocks can create differences.

### 3. What is inode exhaustion?
The filesystem has no free metadata objects for new files even when bytes remain. It commonly appears with millions of small files and requires inode-aware monitoring and workload redesign.

### 4. PV, VG, and LV?
A PV contributes storage to a VG pool; an LV allocates flexible capacity from that pool for a filesystem or raw workload. Metadata protection and dependency understanding are critical.

### 5. Does LVM snapshot equal backup?
No. It depends on the origin and same failure domain, can fill, and may be crash-consistent only. It is useful as a short-lived recovery mechanism or backup coordination point.

### 6. How do you expand storage safely?
Confirm business need, backup/recovery, device changes, partition/PV/VG/LV/filesystem layers, online support, monitoring, rollback, and post-change application validation.

### 7. What do `nodev`, `nosuid`, and `noexec` do?
They restrict device interpretation, set-ID behavior, and direct execution on a mount. Compatibility must be tested because interpreters and application behavior can complicate expectations.

### 8. XFS vs ext4 decision?
Compare support standards, growth/shrink behavior, repair tooling, scale, performance profile, snapshots/backup integration, and team expertise. Choose by workload and operational model.

## Production and Architecture
### 9. Separate database data and log volumes?
It can isolate I/O patterns, failure handling, growth, and recovery, but increases architecture complexity. Validate actual workload and cloud-volume behavior.

### 10. RAID10 vs RAID5/6?
Discuss write penalty, usable capacity, rebuild risk, failure tolerance, workload pattern, controller/cloud abstraction, and recovery. RAID does not replace backup.

### 11. Design storage tiers for 200 banking services.
Classify by authority, I/O profile, latency, durability, RPO/RTO, retention, encryption, growth, recovery tier, and business owner. Standardize patterns and exceptions.

### 12. How do cloud IOPS and throughput limits interact?
A workload can hit IOPS, throughput, queue, burst, instance, or network limits independently. Correlate all layers before resizing.

### 13. How do you prevent storage cost sprawl?
Ownership tags, forecasts, right-sizing, stale-volume detection, snapshot lifecycle, performance telemetry, exception expiry, and showback without compromising recovery.

### 14. How do you migrate a mounted production filesystem?
Inventory dependencies, establish replication/copy, quiesce consistently, verify hashes and business state, update mount/config, canary, cut over, and preserve rollback.

## Banking Scenarios
### 15. Payment database filesystem reaches 100%.
Protect transaction integrity, stop unsafe retries, identify write state, recover capacity through approved action, validate database recovery, reconcile uncertain payments, and improve alerts/retention.

### 16. Ledger volume restored but audit volume is missing.
Do not declare recovery. Audit continuity is part of control integrity. Recover or reconstruct through approved sources and document the gap.

### 17. Snapshot taken during settlement is crash-consistent.
Restore in isolation, apply database recovery, reconcile transaction boundaries, and prove ledger totals before use. Prefer application-consistent procedures for critical windows.

### 18. Storage latency causes payment timeouts.
Timeout does not prove failure. Correlate storage latency, database commit state, gateway response, queues, and idempotency records before retry.

### 19. Encryption key access fails during DR.
The storage design is not disaster-independent. Keys, roles, operators, and region/account boundaries must be tested through alternate protected paths.

### 20. What evidence closes a storage incident?
Capacity/performance restored, filesystem/device healthy, services stable, transaction state reconciled, no data/audit loss, root cause documented, and controls improved.

---

**🏦 FinBank AI DevSecOps · Day 015 of 120**
*Discover · Govern · Validate · Protect · Optimize · Improve*

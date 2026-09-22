[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Advanced 5+ Years Linux Performance Interview Mastery

> [!NOTE]
> Twenty senior, architecture, and banking scenarios with production reasoning.

### 1. Explain load average.
Load average estimates runnable and uninterruptible tasks over time. Compare it with logical CPU count, task states, run queue, and I/O evidence; it is not CPU percentage.

### 2. User, system, idle, iowait, and steal?
User is application execution, system is kernel work, idle is unused CPU, iowait is idle time with outstanding I/O, and steal is CPU time unavailable to the VM because the hypervisor served another workload.

### 3. Why can high CPU be healthy?
Throughput-oriented workloads may intentionally use CPU. The concern is saturation, latency, errors, queueing, and missed SLOs, not utilization alone.

### 4. How detect CPU saturation?
Use run queue relative to CPU count, sustained utilization, scheduling delay, latency, throttling, and per-thread evidence.

### 5. Why is free memory low on Linux?
Linux uses unused memory for page cache. Review available memory, reclaim, swap activity, major faults, and pressure before declaring shortage.

### 6. Swap use versus swap pressure?
Allocated swap can remain after pressure ends. Active swap-in/out and major faults reveal current pressure more clearly.

### 7. How investigate OOM?
Review kernel/OOM logs, victim process, cgroup limits, resident/native/heap growth, workload, page cache, and deployment timeline.

### 8. What is I/O wait?
CPU idle time while requests are outstanding, interpreted with device latency, queue depth, throughput, and workload. It is not itself a complete diagnosis.

### 9. IOPS versus throughput?
IOPS counts operations; throughput measures bytes/time. Small random and large sequential workloads stress different limits.

### 10. Why do averages hide incidents?
Tail latency, intermittent saturation, retries, and hot partitions can disappear in averages. Use percentiles and time-correlated distributions.

### 11. Explain the USE method.
For each resource inspect utilization, saturation, and errors. It provides a systematic starting point while business metrics confirm impact.

### 12. How build a baseline?
Use representative windows, repeatable commands, UTC timestamps, workload context, deploy markers, percentiles, resource and business metrics, and known-good comparisons.

### 13. Capacity-plan a payment service.
Forecast request growth, CPU per request, memory, connection/queue limits, database/storage/network constraints, redundancy, failover headroom, SLO, and seasonal peaks.

### 14. Scale up or scale out?
Compare bottleneck type, statefulness, partitioning, consistency, failover, limits, cost, deployment risk, and operational complexity.

### 15. Payment timeout during CPU saturation: retry?
Not blindly. Query authoritative transaction/idempotency state, reconcile downstream/ledger state, and retry only operations proven uncommitted.

### 16. High load and low CPU on settlement host?
Inspect blocked tasks and I/O/NFS/storage latency. Additional CPU is unlikely to resolve uninterruptible waits.

### 17. Memory optimization reduces cache and slows database.
The change may trade apparent free memory for higher I/O and latency. Validate total system performance, not one metric.

### 18. p99 latency rises but host metrics look normal.
Inspect dependencies, load balancer, network retransmits, DNS, locks, GC pauses, hot keys/partitions, and application traces.

### 19. What evidence proves optimization?
Comparable workload, before/after distributions, resource saturation, error rate, cost, stability, rollback readiness, and banking transaction validation.

### 20. What closes a performance incident?
SLO restored, saturation cleared, no hidden retries/backlog, uncertain transactions reconciled, root cause proven, fix monitored, and prevention assigned.

---

**🏦 FinBank AI DevSecOps · Day 016 of 120**
*Measure · Correlate · Diagnose · Validate · Optimize · Improve*

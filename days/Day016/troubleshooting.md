[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Advanced Performance Troubleshooting & RCA

## Scenario 1: CPU 100 Percent During Payment Peak
**Symptoms:** payment latency and timeout rate rise; CPU remains saturated.
**Evidence:** per-CPU use, run queue, process/thread profile, throttling, steal time, request rate, p99 latency.
**Investigation:** separate workload growth, hot code, lock contention, GC, kernel time, and virtualization contention.
**Root Cause:** proven through correlated profile and workload evidence.
**Fix:** optimize/scale only after bottleneck confirmation.
**Rollback:** revert deployment/configuration or remove unsafe capacity change.
**Prevention:** load tests, profiling, SLO alerts, capacity forecast.
**Banking Impact:** uncertain timed-out payments require idempotency reconciliation.

## Scenario 2: High Load With Idle CPU
**Symptoms:** load average high while CPU idle remains available.
**Evidence:** task states, I/O wait, disk latency, blocked processes, NFS/storage health.
**Investigation:** identify uninterruptible tasks and dependency waits.
**Root Cause:** commonly storage/network filesystem wait rather than CPU shortage.
**Fix:** resolve waiting resource; do not blindly add CPU.
**Banking Impact:** queue accumulation and delayed settlement.

## Scenario 3: Memory Appears Full
**Symptoms:** operators see low free memory.
**Evidence:** available memory, cache, reclaim, swap-in/out, major faults, OOM logs.
**Investigation:** distinguish healthy cache from application growth or pressure.
**Fix:** address leak/limit/workload if pressure proves real.
**Rollback:** revert memory-affecting release or limit.
**Prevention:** pressure and OOM alerts, heap/native profiling.
**Banking Impact:** OOM termination can interrupt transaction processing.

## Scenario 4: High I/O Wait
**Symptoms:** CPU idle/wait pattern, slow database and batch.
**Evidence:** device latency, queue depth, IOPS, throughput, filesystem and cloud limits.
**Investigation:** correlate device, workload, backup, flush, and noisy-neighbor timelines.
**Fix:** tune workload, isolate, re-tier, or resize with approved validation.
**Banking Impact:** commit latency and timeout uncertainty.

## Scenario 5: Network Drops Without Application Error Spike
Review per-interface drops, driver counters, retransmits, backlog, load balancer metrics, and traffic direction. Validate whether retries mask customer impact.

## Scenario 6: Performance Regression After Deployment
Compare exact versions, workload, configuration, profiles, dependency latency, and host state. Canary rollback is preferred over speculative tuning.

## Scenario 7: Steal Time Spikes
Confirm virtualization contention, instance family, noisy-neighbor pattern, and cloud events. Move/resize only after evidence and cost/SLO review.

## Scenario 8: Optimization Improves Average but Worsens p99
Tail latency matters for banking. Inspect queueing, batching, locks, GC pauses, retries, and hot partitions; validate p95/p99 and transaction outcomes, not average alone.

---

**🏦 FinBank AI DevSecOps · Day 016 of 120**
*Measure · Correlate · Diagnose · Validate · Optimize · Improve*

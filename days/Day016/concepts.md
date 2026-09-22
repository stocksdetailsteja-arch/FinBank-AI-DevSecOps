[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Linux Performance Deep Concepts

> [!NOTE]
> Performance is the relationship between workload, resources, queueing, latency, throughput, and business objectives.

## USE Method

| Dimension | Question | Examples |
|---|---|---|
| Utilization | How busy is the resource? | CPU busy, memory use, disk throughput |
| Saturation | Is work waiting? | run queue, I/O queue, reclaim pressure |
| Errors | Is the resource failing? | resets, drops, OOM, filesystem errors |

## CPU
Utilization alone is incomplete. Review user, system, idle, I/O wait, steal, run queue, context switches, interrupts, frequency, cgroup limits, and per-process demand.

## Load Average
Load includes runnable and uninterruptible tasks. Compare load with CPU count, task state, and I/O evidence. A high load can be CPU or storage related.

## Memory
Linux uses free memory for cache. Prefer available memory, reclaim behavior, swap-in/out, major faults, cgroup pressure, and OOM evidence over the `free` column alone.

## Storage
Latency, IOPS, throughput, queue depth, I/O wait, filesystem capacity, and device errors describe different constraints. Cloud volumes can be limited by volume, instance, network, or burst policy.

## Network
Review retransmits, drops, errors, connection states, backlog, DNS, route, MTU, and application response time. An open socket does not prove request success.

## Banking Principle
Performance remediation must protect transaction integrity. A timed-out payment may have committed and must not be retried without authoritative idempotency and ledger checks.

---

**🏦 FinBank AI DevSecOps · Day 016 of 120**
*Measure · Correlate · Diagnose · Validate · Optimize · Improve*

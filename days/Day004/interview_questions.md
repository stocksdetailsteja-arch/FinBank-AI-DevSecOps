[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Senior MNC-Style Interview Questions & Answers

> [!NOTE]
> Original enterprise-style practice material, not leaked or verbatim employer questions.

## 1️⃣ Process vs thread?
A process has its own virtual address space and resource context. Threads share process resources while having independent execution state, stacks and scheduling identities.

## 2️⃣ What do PID and PPID tell you?
PID identifies a process; PPID identifies its parent. Parent relationships help trace supervisors, shells, workers and orphan/reaping behavior.

## 3️⃣ Explain common process states.
Running/runnable, interruptible sleep, uninterruptible sleep, stopped/traced and zombie. Interpret state with workload and duration, not in isolation.

## 4️⃣ SIGTERM vs SIGKILL?
SIGTERM enables graceful cleanup; SIGKILL is kernel-enforced and cannot be handled. Use SIGKILL only after controlled escalation.

## 5️⃣ What is a zombie process?
An exited child whose status has not been collected by the parent. Diagnose the parent because the zombie cannot perform work.

## 6️⃣ Load average vs CPU utilization?
Load reflects runnable and typically uninterruptible tasks over time. CPU percentage is sampled processor use. Compare load with CPU count and I/O evidence.

## 7️⃣ Why can free memory be low on a healthy Linux host?
Linux uses memory for cache. Inspect available memory, reclaim, swap and pressure, not only the free column.

## 8️⃣ RSS vs VSZ?
RSS is resident physical memory; VSZ is virtual address space, including mappings not resident. Neither alone proves a leak.

## 9️⃣ What does nice value control?
It influences CPU scheduling priority among normal tasks. It does not guarantee CPU or override every scheduler class.

## 🔟 How do you diagnose a service that continuously restarts?
Inspect unit policy, exit code, journal, dependencies, identity, ports, limits and recent changes. Prevent restart amplification and validate customer impact.

## 1️⃣1️⃣ What happens to child processes when a parent exits?
They are reparented to an appropriate subreaper, commonly PID 1, which should collect exit status.

## 1️⃣2️⃣ Why should payment services handle SIGTERM?
Deployments and platform shutdowns require connection draining, completion boundaries, offset/checkpoint handling and no uncertain transaction state.

## 1️⃣3️⃣ What is an OOM score?
It contributes to the kernel's victim selection under out-of-memory conditions. Container/cgroup limits and process protection settings also matter.

## 1️⃣4️⃣ How do cgroups help?
They organize processes for resource accounting and controls, allowing bounded CPU, memory, PIDs and I/O behavior.

## 1️⃣5️⃣ A port is open, but users see failures. Next steps?
Check application readiness, protocol/TLS, dependencies, logs, request errors and transaction flow. A listening socket proves only that a process bound the port.

---

**🏦 FinBank AI DevSecOps · Day 004 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

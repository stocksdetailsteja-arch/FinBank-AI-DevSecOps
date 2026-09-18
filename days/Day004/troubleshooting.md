[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Production Troubleshooting Playbook

> [!TIP]
> Use impact → corroborated signals → process/service evidence → safest mitigation → transaction validation → root cause.

## 1. CPU Is 100% on One Core
Identify thread/process ownership, workload type, recent deployment and request rate. Compare load, run queue and latency. Do not kill before understanding transaction state.

## 2. Load Average Is High but CPU Is Idle
Look for uninterruptible I/O waits, storage/network dependencies, blocked tasks and kernel evidence. Load includes more than runnable CPU work.

## 3. Memory Is Low but Application Has Not Failed
Check available memory, cache, swap activity, RSS growth and reclaim pressure. Linux using memory for cache is normal; sustained swapping or OOM evidence is not.

## 4. OOM Killer Terminates a Banking Service
Preserve kernel/service logs, identify cgroup and host limits, process growth, leak pattern and concurrent workload. Validate transaction recovery and idempotency before replay.

## 5. Zombie Count Keeps Increasing
Find parent processes and verify they reap children. Killing zombies is ineffective because they have exited. Correct or restart the parent through controlled change.

## 6. Service Is in Restart Loop
Inspect exit code, restart policy, dependencies, credentials, ports and previous logs. Temporarily reducing restart amplification may be safer than repeated failure.

## 7. SIGTERM Does Not Stop the Service
Check signal handling, blocked operations, shutdown timeout, child processes and uninterruptible state. Escalate only with approval and recovery validation.

## 8. Too Many Open Files
Inspect process limits and actual descriptor growth. Determine whether sockets/files leak. Raising limits alone hides defects and can increase system impact.

## 9. Port Is Listening but Health Check Fails
Confirm process identity, bind address, protocol, TLS, upstream dependencies and application-level readiness. Listening is not the same as ready.

## 10. Works Manually but Fails Under systemd
Compare user, groups, environment, directory, resource limits, sandbox rules, dependencies and cgroup context.

---

**🏦 FinBank AI DevSecOps · Day 004 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

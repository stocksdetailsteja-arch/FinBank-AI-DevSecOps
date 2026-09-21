[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Senior MNC-Style Interview Questions & Answers

> [!NOTE]
> Original enterprise practice material, not leaked employer questions.

## 1️⃣ What is PID 1 responsible for?
It initializes userspace, supervises units, manages dependencies and reaps orphaned children.

## 2️⃣ Enable vs start?
Start changes runtime state now. Enable configures boot-time linkage. A unit can be enabled and inactive or disabled and active.

## 3️⃣ `Wants` vs `Requires`?
Both pull in dependencies, but `Requires` is stronger. Ordering still needs `After` or `Before` where required.

## 4️⃣ `After` vs `Requires`?
`After` controls order only. `Requires` expresses requirement but not order by itself.

## 5️⃣ ActiveState vs SubState?
ActiveState is high-level; SubState gives unit-type-specific detail such as running or exited.

## 6️⃣ Why use drop-ins?
They override selected properties without copying the vendor unit, improving maintainability and package-upgrade behavior.

## 7️⃣ How do you diagnose a failed service?
Capture status/result, journal, exit code, dependencies, effective unit, environment, identity and recent changes.

## 8️⃣ What is a target unit?
A synchronization/grouping unit representing a boot or operational state and dependency anchor.

## 9️⃣ What is socket activation?
A socket unit listens and can start a service on demand, decoupling availability of the socket from process startup.

## 🔟 Why can restart always be dangerous?
It can create crash loops, overload dependencies, repeat unsafe work and hide root cause.

## 1️⃣1️⃣ How do timers differ from cron?
Timers integrate with systemd units, dependencies, journal, persistence and monotonic/calendar scheduling.

## 1️⃣2️⃣ What does daemon reload do?
It reloads systemd manager configuration after unit-file changes; it does not restart services automatically.

## 1️⃣3️⃣ How do you harden a service?
Use non-root identity, filesystem protections, capability reduction, namespace/sandbox controls, resource limits and explicit network access.

## 1️⃣4️⃣ Banking service receives SIGTERM during payment work. Design?
Stop new work, drain safe operations, preserve idempotency/checkpoint state, exit within timeout and reconcile uncertainty.

## 1️⃣5️⃣ What evidence validates recovery?
Unit state, journal, health/readiness, dependency status, business KPIs, transaction reconciliation and absence of restart loops.

---

**🏦 FinBank AI DevSecOps · Day 007 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

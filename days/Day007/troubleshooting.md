[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Production systemd Troubleshooting

> [!TIP]
> Preserve status, result, unit definition, journal, dependency state and recent change evidence before restarting.

## 1. Unit Is Enabled but Not Running
Enablement controls boot linkage, not current runtime. Inspect active state, conditions, dependencies and journal.

## 2. Unit Is Active but Application Is Unhealthy
Validate listening socket, readiness, dependencies and business response. Active process state is not business health.

## 3. Service Enters Restart Loop
Inspect exit result, restart policy, rate limit, dependency and recent change. Stop amplification before repeated failure harms dependencies.

## 4. Service Works Manually but Not Under systemd
Compare user, groups, environment, working directory, PATH, limits, sandbox and dependency ordering.

## 5. `Start request repeated too quickly`
The restart rate limit was reached. Diagnose the underlying exit rather than resetting the counter blindly.

## 6. Timeout During Stop
Inspect signal handling, child processes, blocked I/O and timeout policy. Forced kill can create transaction uncertainty.

## 7. Unit Starts Before Network Dependency
Ordering and requirement are separate. Review `After`, `Wants`, `Requires` and application retry behavior.

## 8. Journal Has No Historical Logs
Check volatile versus persistent journal configuration, rotation, disk limits and forwarding. Do not assume absence means no event.

## 9. After Editing Unit, Change Has No Effect
Verify the correct source/drop-in and controlled daemon reload. Compare `systemctl cat` and effective properties.

## 10. Service Runs as Root Unnecessarily
Define a dedicated identity and sandbox controls, then test file, network, capability and operational requirements.

---

**🏦 FinBank AI DevSecOps · Day 007 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

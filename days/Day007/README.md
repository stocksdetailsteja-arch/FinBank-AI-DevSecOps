# ⚙️ Day 007: systemd, Services, Journald & Boot Reliability

### 🏦 FinBank AI DevSecOps · Foundation Phase · Day 7 of 120

🟢 **STATUS: READY** · 🔵 **PHASE: FOUNDATION** · 🟡 **PLATFORM: SYSTEMD** · 🟣 **DOMAIN: BANKING** · 🤖 **AI: HUMAN-VALIDATED**

> A safe, production-focused module for boot targets, unit dependencies, transient services, journald evidence, controlled failure analysis, security hardening and banking-service recovery.

---

## 🧭 Quick Navigation

| Learn | Build | Validate | Prepare |
|---|---|---|---|
| [🧠 Concepts](concepts.md) | [🧪 Lab](lab_guide.md) | [✅ Testing](testing_strategy.md) | [🎯 Interview](interview_questions.md) |
| [⌨️ Commands](commands.md) | [🏗️ Architecture](architecture.md) | [🔐 Security](security_notes.md) | [🚨 Troubleshooting](troubleshooting.md) |
| [🏦 Banking](banking_relevance.md) | [🤖 AI Workflow](ai_assisted_workflow.md) | [📸 Evidence](screenshot_checklist.md) | [🏁 Summary](summary.md) |
| [💰 Cost](aws_cost_shutdown.md) | [📝 Notes](lab_notes.md) | [🌿 Git](git_workflow.md) | [🎨 Style](visual_style_guide.md) |

## 🎯 Learning Outcomes

- Explain firmware, bootloader, kernel, initramfs, root filesystem and PID 1.
- Distinguish unit types, active states, enablement, targets and dependency ordering.
- Inspect services and journal evidence without changing system units.
- Use a user-level transient service to test lifecycle and failure safely.
- Diagnose exit codes, restart loops, ordering and environment differences.
- Relate graceful lifecycle controls to payment availability and integrity.

## 📊 Completion Dashboard

| Workstream | Evidence | Status |
|---|---|:---:|
| Boot | PID 1, target and timing captured | ⬜ |
| Units | service inventory and dependencies reviewed | ⬜ |
| Logs | journal evidence analyzed | ⬜ |
| Lifecycle | demo user service started and stopped | ⬜ |
| Failure | controlled service failure captured | ⬜ |
| Security | hardening controls reviewed | ⬜ |
| Validation | no demo process/unit remains | ⬜ |
| Git | PR merged | ⬜ |

**Progress:** `Day 007 / 120` ▰▱▱▱▱▱▱▱▱▱

> [!IMPORTANT]
> The lab uses `systemd-run --user` only. It does not create files under `/etc/systemd`, use sudo, enable services, change targets, reboot, or modify production units.

## 🏗️ Service Lifecycle

```mermaid
flowchart LR
  BOOT[Firmware and Bootloader] --> KERNEL[Kernel and initramfs]
  KERNEL --> PID1[systemd PID 1]
  PID1 --> TARGET[Default Target]
  TARGET --> UNIT[Service Unit]
  UNIT --> PROCESS[Main Process]
  PROCESS --> JOURNAL[Journal Evidence]
  JOURNAL --> SRE[Validation and Recovery]
```

## 🏦 Banking Control Mapping

| Concern | systemd control | Outcome |
|---|---|---|
| availability | dependencies and restart policy | controlled recovery |
| integrity | graceful stop and bounded timeout | safer in-flight work |
| security | service identity and sandboxing | lower blast radius |
| auditability | journal timestamps and unit context | incident reconstruction |
| change control | unit review and daemon reload governance | predictable rollout |

## 📦 Enterprise Deliverables

- 17 premium GitHub-native documents
- Four safe automation scripts
- Three operations templates
- Nine evidence checkpoints
- Fifteen senior interview questions
- Ten production troubleshooting scenarios
- Banking reliability, security, AI and cost controls

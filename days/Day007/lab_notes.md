[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 📝 Day 007 Engineering Lab Notes

## 🧭 Session Context
- Date:
- Branch:
- Repository root:
- Origin:

## 🚀 Boot Baseline
| Signal | Observation |
|---|---|
| PID 1 | |
| default target | |
| userspace startup | |
| critical-chain observation | |
| failed system units | |

## ⚙️ Service Review
- selected system service:
- active/sub state:
- unit-file state:
- main PID:
- dependency observation:

## 🧾 Journal Review
- warning/error observation:
- journal disk use:
- timestamp/boot context:
- sensitive-data review:

## 🧪 User Demo Service
- unit name:
- PID:
- state:
- journal message:
- stop result:

## 🚨 Controlled Failure
- exit code:
- unit result:
- journal evidence:
- root cause:
- safe cleanup:

## 🏦 Banking Reflection
- graceful shutdown control:
- restart-policy risk:
- business health check:
- reconciliation requirement:

## 🚀 Boot And Service Baseline Analysis

### Process Supervisor

PID 1:

systemd

### Default Boot Target

Record the output of:

systemctl get-default

### Boot Timing

Record the output of:

systemd-analyze

### Failed Unit Review

Record whether any failed units were detected.

### Engineering Observation

systemd operates as PID 1 and coordinates
the Linux userspace boot process.

The default target groups the units
required for the configured operating
state.

Dependency ordering determines when
services become eligible to start.

### Journal Observation

Boot-level warning evidence was reviewed
without changing service state.

Journal disk consumption was also
recorded to support log-retention
awareness.

### Banking Production Relevance

Payment, ledger, fraud and audit services
depend on predictable startup ordering,
dependency readiness and controlled
service recovery.

A service reporting active does not by
itself prove that transaction processing
is healthy.

Service state must be combined with:

- Application readiness
- Dependency health
- Payment success metrics
- Queue and ledger validation
- Transaction reconciliation

### Screenshot References

001_Day007_Repository_Safety.png

002_Systemd_PID1_And_Boot_Target.png

003_Running_And_Failed_Service_Inventory.png

004_Journal_Boot_Warnings_And_Usage.png

005_Default_Target_Dependency_Review.png

## 🚀 Boot Baseline Results

### PID 1

systemd

### Default Target

graphical.target

### Startup Timing

Kernel:

1.107s

Userspace:

12.370s

Total:

13.478s

### Observation

systemd successfully coordinated
service startup and target activation.

### Screenshot References

001_Day007_Repository_Safety.png

002_Systemd_PID1_And_Boot_Target.png

## ⚙️ Service Inventory Review

### Failed Units

None

### Important Running Services

mysql.service

ssh.service

chrony.service

systemd-journald.service

systemd-networkd.service

systemd-resolved.service

amazon-ssm-agent

### Observation

Critical platform services were
operational and no service failures
were detected.

### Screenshot Reference

003_Running_And_Failed_Service_Inventory.png

## 🧾 Journal Analysis

### Journal Size

32 MB

### Notable Warnings

CPU vulnerability notices

Clock synchronization adjustments

Virtualization-related warnings

### Observation

Warnings were informational and did
not prevent successful startup.

### Screenshot Reference

004_Journal_Boot_Warnings_And_Usage.png

## 🔗 Dependency Analysis

### Default Target

graphical.target

### Critical Chain

graphical.target
→ multi-user.target
→ snapd.seeded.service
→ basic.target

### Observation

Boot dependency ordering completed
successfully without failures.

### Screenshot Reference

005_Default_Target_Dependency_Review.png

## 🧪 User Service Lifecycle Validation

### Service Name

finbank-day007-demo.service

### Initial State

active

running

### PID

10948

### Shutdown Result

inactive

### Engineering Observation

The transient service lifecycle was
successfully validated.

The service started, generated runtime
state information and shut down cleanly.

### Screenshot References

006_User_Transient_Service_Started.png

007_User_Service_Journal_And_Stop.png

## 🚨 Controlled Failure Analysis

### Unit Name

finbank-day007-failure.service

### Result

Transient unit no longer present
during post-execution status review.

### Engineering Observation

Short-lived transient services may be
automatically collected after execution.

The controlled failure exercise
demonstrated service termination
without affecting system services.

### Banking Production Relevance

Failure evidence should be gathered
immediately during incident response
before service cleanup mechanisms
remove short-lived runtime state.

### Screenshot Reference

008_Controlled_User_Service_Failure.png

---

**🏦 FinBank AI DevSecOps · Day 007 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

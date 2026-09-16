[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🏗️ Linux Architecture & Boot Flow

## 🧱 Runtime Architecture
```mermaid
flowchart TB
  HW[Hardware] --> K[Linux Kernel]
  K --> MM[Memory Manager]
  K --> SCH[Scheduler]
  K --> VFS[Virtual Filesystem]
  K --> NET[Network Stack]
  K --> DRV[Device Drivers]
  INIT[systemd PID 1] --> SVC[Services]
  SVC --> APP[FinBank Workloads]
  SH[Shell] --> PROC[User Processes]
  PROC --> K
```

## 🚀 Boot Flow
```mermaid
flowchart LR
  FW[Firmware] --> BL[Bootloader]
  BL --> KR[Kernel]
  KR --> IR[Initial RAM Filesystem]
  IR --> ROOT[Real Root Filesystem]
  ROOT --> SD[systemd PID 1]
  SD --> TARGET[Target and Services]
```

## 🗂️ State Placement
- Configuration belongs in controlled configuration paths, not application source.
- Runtime state must tolerate reboot where appropriate.
- Persistent application data requires backup, ownership and recovery rules.
- Logs require rotation, access control and observability integration.

> [!WARNING]
> Do not treat `/tmp` or `/run` as durable storage. Do not place secrets in repository files or shared temporary paths.

---

**🏦 FinBank AI DevSecOps · Day 002 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

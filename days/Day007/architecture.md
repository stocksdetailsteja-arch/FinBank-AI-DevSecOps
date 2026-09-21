[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🏗️ systemd Reliability Architecture

## 🧱 Unit Relationship Model
```mermaid
flowchart TB
  TARGET[default.target] --> SERVICE[finbank service]
  TARGET --> TIMER[maintenance timer]
  SERVICE --> NETWORK[network-online.target]
  SERVICE --> SECRET[credential source]
  SERVICE --> LOG[journal]
  SERVICE --> CG[cgroup]
  SERVICE --> HEALTH[readiness and business checks]
```

## 🚨 Diagnosis Flow
```mermaid
flowchart LR
  ALERT[Service Alert] --> STATUS[Unit State and Result]
  STATUS --> JOURNAL[Journal and Exit Code]
  JOURNAL --> DEPS[Dependencies and Ordering]
  DEPS --> CONFIG[Unit and Environment]
  CONFIG --> MITIGATE[Controlled Mitigation]
  MITIGATE --> VALIDATE[Service and Transaction Validation]
```

## 🏦 Reliability Layers

| Layer | Control | Evidence |
|---|---|---|
| process | identity, limits, graceful signals | PID and exit result |
| service | dependencies, timeout, restart | unit properties |
| application | health and readiness | application response |
| business | payment/ledger outcome | reconciliation and KPIs |
| platform | redundancy and rollout | deployment evidence |

> [!IMPORTANT]
> A service can be `active` while its business function is degraded. Combine unit state with application and transaction health.

---

**🏦 FinBank AI DevSecOps · Day 007 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

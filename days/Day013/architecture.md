[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🏗️ Security Audit Architecture

## Evidence Pipeline
```mermaid
flowchart TB
  HOST[Linux Host] --> JOURNAL[journald]
  HOST --> AUDIT[Linux Audit]
  HOST --> AUTH[Authentication Events]
  JOURNAL --> COLLECT[Central Collector]
  AUDIT --> COLLECT
  AUTH --> COLLECT
  COLLECT --> SIEM[SIEM]
  SIEM --> CASE[Incident Case]
  CASE --> ARCHIVE[Protected Evidence Archive]
```
## Incident Decision Flow
```mermaid
flowchart LR
  ALERT[Alert] --> VALIDATE[Validate Signal]
  VALIDATE --> IMPACT[Assess Business Impact]
  IMPACT --> PRESERVE[Preserve Evidence]
  PRESERVE --> CONTAIN[Approved Containment]
  CONTAIN --> RECON[Transaction Reconciliation]
  RECON --> CLOSE[Root Cause and Prevention]
```
## Design Rules
Centralize time, preserve source metadata, restrict access, monitor pipeline health, define retention, correlate deployment/business events, and maintain a recovery path.

---

**🏦 FinBank AI DevSecOps · Day 013 of 120**
*Observe · Audit · Investigate · Validate · Document · Improve*

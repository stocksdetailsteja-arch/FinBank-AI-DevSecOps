[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🏗️ Observability Architecture & Incident Decisions

## Central Logging Architecture
```mermaid
flowchart TB
  HOSTS[Linux Hosts] --> JOURNAL[journald]
  JOURNAL --> AGENT[Forwarder or Agent]
  APPS[Banking Applications] --> JSON[Structured Events]
  JSON --> AGENT
  AGENT --> QUEUE[Buffered Transport]
  QUEUE --> STORE[Central Index and Archive]
  STORE --> SEARCH[Search and Dashboards]
  STORE --> DETECT[Detection Rules]
  DETECT --> CASE[Incident Case]
  CASE --> RECON[Business Reconciliation]
```

## Incident Decision Tree
```mermaid
flowchart LR
  ALERT[Alert] --> VALID{Signal Valid?}
  VALID -->|No| TUNE[Tune Detection]
  VALID -->|Yes| IMPACT{Business Impact?}
  IMPACT -->|Unknown| QUERY[Collect Bounded Evidence]
  IMPACT -->|Confirmed| PRESERVE[Preserve Evidence]
  QUERY --> PRESERVE
  PRESERVE --> CONTAIN[Approved Containment]
  CONTAIN --> RECOVER[Recover Service]
  RECOVER --> RECON[Reconcile Transactions]
  RECON --> RCA[Root Cause and Prevention]
```

## Decision Matrix
| Decision | Evidence | Trade-off |
|---|---|---|
| local vs central retention | volume, outage mode, compliance | cost vs resilience |
| sync vs async forwarding | loss tolerance and latency | durability vs performance |
| full vs sampled traces | traffic/cost/criticality | visibility vs overhead |
| redaction point | schema and trust boundary | privacy vs diagnostic value |

---

**🏦 FinBank AI DevSecOps · Day 017 of 120**
*Observe · Correlate · Investigate · Recover · Validate · Improve*

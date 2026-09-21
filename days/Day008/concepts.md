[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Logging & Observability Concepts

## 🗺️ Concept Matrix

| Concept | Meaning | Production risk |
|---|---|---|
| event | timestamped occurrence | missing context or false conclusions |
| journald | structured systemd journal service | retention or access misconfiguration |
| rsyslog | syslog processing and forwarding daemon | routing/filter mistakes |
| facility | event source category | weak routing taxonomy |
| priority | emerg through debug severity | alert noise or missed incidents |
| boot ID | identifier for one boot | mixed timelines |
| correlation ID | links related operations | broken incident reconstruction |
| retention | how long evidence remains | compliance or storage risk |
| rotation | archive/compress/delete policy | disk exhaustion or evidence loss |
| SIEM | centralized security event analysis | ingestion and normalization gaps |

## 📶 Severity Levels

| Numeric | Name | Typical meaning |
|---:|---|---|
| 0 | emerg | unusable system |
| 1 | alert | immediate action |
| 2 | crit | critical condition |
| 3 | err | error condition |
| 4 | warning | warning condition |
| 5 | notice | significant normal event |
| 6 | info | informational event |
| 7 | debug | detailed diagnostics |

## 🔭 Logs, Metrics and Traces
Logs explain discrete events, metrics quantify behavior over time, and traces follow a request across components. Strong observability correlates all three with deployment, host and business identifiers.

## 🧾 Structured Logging
Prefer stable fields such as timestamp, severity, service, environment, correlation ID, event type and outcome. Never expose secrets or regulated data. Messages should be machine-parseable and human-readable.

## 🗄️ Retention and Rotation
Retention must balance legal, security, forensic, operational and cost requirements. Rotation protects disk capacity but must not destroy required audit evidence. Central forwarding reduces dependence on one host.

## ⏱️ Time Integrity
Reliable timestamps require synchronized clocks and explicit timezone/UTC policy. Clock drift can make causal analysis and transaction reconciliation unreliable.

> [!TIP]
> A log line is evidence, not automatically the root cause. Correlate logs with metrics, traces, changes, dependencies and business outcomes.

---

**🏦 FinBank AI DevSecOps · Day 008 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

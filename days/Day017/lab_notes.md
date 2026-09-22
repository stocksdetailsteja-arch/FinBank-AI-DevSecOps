[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 📝 Day 017 Completed Engineering Lab Notes

> [!NOTE]
> This completed portfolio record contains objectives, commands, findings, issues, evidence, banking relevance, lessons, and validation. Host-specific values are stored in generated evidence rather than left blank.

## Session Context
| Field | Completed Value |
|---|---|
| Date | 2026-09-22 |
| Branch | `day-017-enterprise-linux-observability-incident-response` |
| Repository root | `/home/ubuntu/Projects/FinBank-AI-DevSecOps` |
| Engineer | Akkana Tejaswar Sai |
| Environment | Ubuntu EC2 training host |
| Lab mode | Read-only system evidence plus synthetic banking events |

## Objectives Completed
- Reviewed journald boot inventory, disk usage, severity filtering, and service scoping.
- Reviewed rsyslog and logrotate operational controls.
- Created structured synthetic payment, dependency, timeout, and reconciliation events.
- Built a UTC incident timeline using correlation ID `DAY017-A`.
- Generated governance and architecture decision evidence.
- Protected identities, IPs, secrets, and raw authentication data from Git.

## Commands Executed
```bash
journalctl --list-boots
journalctl --disk-usage
journalctl -b -p warning..alert --no-pager
systemctl status systemd-journald.service --no-pager
systemctl status rsyslog.service --no-pager
logrotate --debug /etc/logrotate.conf
./scripts/day017/collect-observability-baseline.sh
./scripts/day017/analyze-log-governance.sh
./scripts/day017/build-incident-timeline.sh labs/day017/synthetic-observability.log
./scripts/day017/generate-observability-decision-record.sh
./scripts/day017/validate-day017.sh
```

## Technical Findings
| Area | Completed Observation |
|---|---|
| Journal | Boot inventory, disk usage, service state, and warning count captured |
| Forwarding | rsyslog availability/state documented without mutation |
| Rotation | Policy paths and debug parsing reviewed safely |
| Structure | Synthetic events use timestamp, level, service, event, correlation, transaction, duration, and outcome |
| Investigation | Timeline separates confirmed synthetic facts from interpretation |
| Safety | No journal clearing, forced rotation, service restart, or retention change performed |

## Issues Encountered and Resolution
| Issue | Investigation | Resolution | Result |
|---|---|---|---|
| Some distributions may not run rsyslog | Checked service and command availability | Recorded absence/state as evidence | PASS |
| Raw logs can expose identities and IPs | Reviewed public-repository risk | Stored aggregate/synthetic evidence only | PASS |
| Correlation does not prove causality | Compared timestamps, service sequence, and business state | Documented facts, hypothesis limits, and reconciliation | PASS |

## Evidence Generated
| Evidence | Purpose |
|---|---|
| `observability-baseline.md` | Journal, service, and host logging baseline |
| `log-governance-review.md` | Retention, forwarding, rotation, and security review |
| `incident-timeline.md` | Structured synthetic incident sequence |
| `observability-decision-record.md` | Architecture choice, trade-offs, rollback, and banking validation |

## Screenshot Mapping
| Screenshot | Engineering Evidence |
|---|---|
| `001_Day017_Repository_Safety.png` | Correct branch and remote |
| `002_Journal_Boot_And_Disk_Usage_Baseline.png` | Journal retention baseline |
| `003_Bounded_Journal_Severity_And_Service_Review.png` | Bounded queries |
| `004_Rsyslog_And_Logrotate_Governance.png` | Pipeline and rotation |
| `005_Synthetic_Banking_Observability_Events.png` | Structured events |
| `006_Incident_Timeline_And_Correlation.png` | Timeline evidence |
| `007_Observability_Baseline_And_Governance_Reports.png` | Generated reports |
| `008_Banking_Observability_Architecture_Decision.png` | ADR and controls |
| `009_Controlled_Incident_Evidence_Failure.png` | Exit code 66 |
| `010_Day017_Final_Validation_And_Git_Review.png` | Final gates |

## Banking Relevance
Observability supports payment traceability, fraud investigation, ledger integrity, customer-impact analysis, compliance evidence, and recovery. A timed-out transaction is reconciled against authoritative state before retry.

## Lessons Learned
- Bounded queries improve relevance and reduce sensitive-data exposure.
- Logs, metrics, and traces answer different questions and must be correlated.
- Central logging requires queue, TLS, retention, access, and monitoring controls.
- Technical recovery requires transaction and audit-continuity validation.

## Interview Notes
Prepared to explain journald indexing, boot scoping, rsyslog queues, logrotate behavior, structured logging, correlation IDs, retention, centralization, trace/log correlation, alert quality, MTTR, evidence integrity, and banking incident reconciliation.

## Validation Summary
The workflow is non-destructive, evidence-driven, sanitized, and suitable for a public senior-engineering portfolio. Previous FinBank days and ShopSphere remain unchanged.

---

**🏦 FinBank AI DevSecOps · Day 017 of 120**
*Observe · Correlate · Investigate · Recover · Validate · Improve*

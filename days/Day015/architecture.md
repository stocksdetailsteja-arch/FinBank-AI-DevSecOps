[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🏗️ Storage Architecture & Decision Engineering

## Banking Storage Architecture
```mermaid
flowchart LR
  PAY[Payment API] --> DB[(Transactional Store)]
  DB --> DATA[Encrypted Data Volume]
  DB --> LOG[Separate Log Volume]
  DATA --> SNAP[Snapshots]
  LOG --> PITR[Log Backup]
  SNAP --> VAULT[Immutable Backup Vault]
  PITR --> VAULT
  VAULT --> DR[Isolated DR Restore]
  DR --> RECON[Ledger Reconciliation]
```

## Capacity Decision Tree
```mermaid
flowchart LR
  ALERT[Storage Alert] --> TYPE{Bytes Inodes or Latency?}
  TYPE -->|Bytes| GROW[Find Growth Owner]
  TYPE -->|Inodes| SMALL[Find Small-File Explosion]
  TYPE -->|Latency| IO[Inspect IOPS Queue and Device]
  GROW --> SAFE{Safe Online Expansion?}
  SAFE -->|Yes| EXPAND[Approved Expansion]
  SAFE -->|No| MIGRATE[Migrate or Reduce Safely]
  SMALL --> POLICY[Retention and File Design]
  IO --> TIER[Resize or Re-tier]
```

## Architecture Decision Criteria
| Criterion | Questions |
|---|---|
| Integrity | What is authoritative and consistency-safe? |
| Availability | Which device/AZ failures are tolerated? |
| Performance | Peak IOPS, throughput, latency, queue? |
| Security | Encryption, keys, mount policy, access? |
| Recovery | Snapshot/backup/PITR/restore evidence? |
| Cost | provisioned capacity and growth? |

---

**🏦 FinBank AI DevSecOps · Day 015 of 120**
*Discover · Govern · Validate · Protect · Optimize · Improve*

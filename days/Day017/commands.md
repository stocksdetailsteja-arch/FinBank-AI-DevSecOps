[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Explained Command Center: Purpose, Output, Usage & Examples

## `journalctl --list-boots`

```bash
journalctl --list-boots
```

**Purpose:** Lists retained boot sessions with boot identifiers and time ranges.
**Important fields:** boot offset, boot ID, first timestamp, last timestamp.
**Production use:** Distinguishes events before and after reboots and prevents querying the wrong boot.
**Banking use:** Confirms whether a payment incident crossed a restart or failover boundary.
**Example interpretation:** `0` is current boot; `-1` is the previous retained boot.

## `journalctl -b -p warning..alert`

```bash
journalctl -b -p warning..alert --no-pager
```

**Purpose:** Shows warning through alert priority events from the current boot.
**Key behavior:** `-b` scopes to one boot; `-p` limits severity; `--no-pager` is automation friendly.
**Production use:** Fast bounded triage for service, kernel, filesystem, and network warnings.
**Banking use:** Correlates host warnings with transaction-latency or settlement windows.
**Interview tip:** Severity is not business impact; low-severity evidence may still explain a major incident.

## `journalctl -u SERVICE --since`

```bash
journalctl -u ssh.service --since "2 hours ago" --no-pager
```

**Purpose:** Filters events for one systemd unit and time window.
**Production use:** Reduces noise during service-specific investigation.
**Security note:** Authentication logs may contain identities and IPs; redact public evidence.
**Example:** Replace `ssh.service` only with an approved target unit.

## `journalctl --disk-usage`

```bash
journalctl --disk-usage
```

**Purpose:** Reports disk space consumed by journal files.
**Production use:** Capacity and retention review.
**Banking use:** Prevents log growth from consuming a filesystem required by payment services.

## `systemctl status rsyslog.service`

```bash
systemctl status rsyslog.service --no-pager
```

**Purpose:** Shows service state, recent messages, PID, and exit result.
**Production use:** Validates the forwarding daemon before blaming the central platform.
**Interpretation:** `active` proves process state, not end-to-end delivery.

## `logrotate --debug`

```bash
logrotate --debug /etc/logrotate.conf
```

**Purpose:** Parses and simulates logrotate decisions without rotating files.
**Production use:** Validates syntax, frequency, state, and matching policies safely.
**Caution:** Do not use `--force` in this lab.

## `grep` for Synthetic Correlation

```bash
grep 'correlation=DAY017-A' labs/day017/synthetic-observability.log
```

**Purpose:** Finds related synthetic events.
**Production use:** Demonstrates correlation before using indexed platforms.
**Limitation:** Plain grep does not replace structured parsing, indexing, access control, or retention.

## Packaged Commands

```bash
./scripts/day017/collect-observability-baseline.sh
./scripts/day017/analyze-log-governance.sh
./scripts/day017/build-incident-timeline.sh labs/day017/synthetic-observability.log
./scripts/day017/generate-observability-decision-record.sh
./scripts/day017/validate-day017.sh
```

Each packaged command writes sanitized evidence, validates inputs, avoids system mutation, and supports final portfolio validation.

---

**🏦 FinBank AI DevSecOps · Day 017 of 120**
*Observe · Correlate · Investigate · Recover · Validate · Improve*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Enterprise Observability & Incident Lab

> [!IMPORTANT]
> The lab is read-only for system logs and uses synthetic events for portfolio evidence. Do not clear journals, force rotation, change retention, restart logging services, or export raw authentication records.

## Phase 1: Repository Safety
Create `day-017-enterprise-linux-observability-incident-response`, verify the FinBank root/origin, and verify ShopSphere remains clean.

## Phase 2: Journal Baseline
Capture retained boots, journal disk use, current-boot warning counts, journald state, and bounded service evidence.

## Phase 3: Pipeline and Rotation Review
Review rsyslog state, configuration paths, logrotate policy inventory, and a debug parse. Do not force rotation.

## Phase 4: Synthetic Banking Events
Create a structured synthetic log with correlation `DAY017-A`, transaction references, durations, outcomes, and a payment timeout followed by reconciliation.

## Phase 5: Evidence Generation
Run four report scripts and inspect the baseline, governance review, incident timeline, and architecture decision.

## Phase 6: Controlled Failure
```bash
set +e
./scripts/day017/build-incident-timeline.sh /does/not/exist
echo "controlled_exit_code=$?"
set -e
```

## Phase 7: Validation
Run `validate-day017.sh`, normalize evidence, inspect Git status, and execute `git diff --check`.

---

**🏦 FinBank AI DevSecOps · Day 017 of 120**
*Observe · Correlate · Investigate · Recover · Validate · Improve*

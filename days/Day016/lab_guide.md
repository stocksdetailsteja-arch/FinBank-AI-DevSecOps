[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Enterprise Linux Performance Lab

> [!IMPORTANT]
> The lab is read-only except for a short, bounded user-space CPU calculation. No service restart, sysctl write, package install, stress tool, cloud resize, or production traffic is used.

## Phase 1: Repository Safety
Create `day-016-enterprise-linux-performance-engineering`, verify root/origin, and verify ShopSphere is clean.

## Phase 2: CPU and Scheduler Baseline
Capture CPU count, load average, process CPU ranking, and five `vmstat` samples. Interpret run queue, context switches, I/O wait, and steal time.

## Phase 3: Memory Baseline
Capture total, available, cache, swap, and memory pressure indicators. Do not label cache as waste.

## Phase 4: Storage and Network Baseline
Capture filesystem capacity/inodes, disk counters, socket summary, and interface errors/drops.

## Phase 5: Bounded CPU Test
Run the packaged calculation. Compare baseline and test evidence. The test must terminate automatically.

## Phase 6: Reports and Decision Record
Generate four evidence artifacts and inspect risk thresholds, observations, trade-offs, and banking validation.

## Phase 7: Controlled Failure
```bash
set +e
./scripts/day016/analyze-performance-risk.sh --unsupported
echo "controlled_exit_code=$?"
set -e
```

## Phase 8: Final Validation
Run validator, normalize evidence, inspect Git status, and run `git diff --check`.

---

**🏦 FinBank AI DevSecOps · Day 016 of 120**
*Measure · Correlate · Diagnose · Validate · Optimize · Improve*

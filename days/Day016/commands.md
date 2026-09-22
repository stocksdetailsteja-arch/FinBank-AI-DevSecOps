[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Day 016 Command Center

## CPU and Scheduler
```bash
uptime
nproc
vmstat 1 5
ps -eo pid,ppid,user,stat,%cpu,%mem,comm --sort=-%cpu | head -n 20
```

## Memory
```bash
free -h
cat /proc/meminfo | head -n 30
vmstat 1 5
```

## Storage and Network
```bash
df -hT
df -ihT
cat /proc/diskstats | head -n 20
ss -s
ip -s link
```

## Reports and Bounded Load
```bash
chmod +x scripts/day016/*.sh
./scripts/day016/collect-performance-baseline.sh
./scripts/day016/analyze-performance-risk.sh
./scripts/day016/run-bounded-cpu-test.sh
./scripts/day016/generate-performance-decision-record.sh
```

## Quality
```bash
for script in scripts/day016/*.sh; do bash -n "$script"; done
./scripts/day016/validate-day016.sh
git diff --check
```

---

**🏦 FinBank AI DevSecOps · Day 016 of 120**
*Measure · Correlate · Diagnose · Validate · Optimize · Improve*

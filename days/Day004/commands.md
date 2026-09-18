[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Day 004 Command Center

## 🧭 Repository Safety
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## 🔍 Process Inventory
```bash
ps -eo pid,ppid,user,stat,ni,pcpu,pmem,etime,comm --sort=-pcpu | head -n 20
ps -p 1 -o pid,ppid,user,stat,comm,args
pgrep -af day004 || true
```

## 📈 Host Baseline
```bash
uptime
nproc
free -h
vmstat 1 5
cat /proc/loadavg
cat /proc/meminfo | head -n 20
```

## ⚙️ Service Inspection
```bash
systemctl is-system-running || true
systemctl --failed --no-pager || true
systemctl list-units --type=service --state=running --no-pager | head -n 25
systemctl status ssh --no-pager 2>/dev/null | head -n 30 || true
```

## 🌐 Process Exposure
```bash
ss -lntup
lsof -p 1 2>/dev/null | head -n 20 || true
```

## ✅ Quality Gates
```bash
bash -n scripts/day004/collect-process-baseline.sh
bash -n scripts/day004/synthetic-cpu-workload.sh
bash -n scripts/day004/stop-synthetic-workload.sh
bash -n scripts/day004/validate-day004.sh
git diff --check
```

---

**🏦 FinBank AI DevSecOps · Day 004 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

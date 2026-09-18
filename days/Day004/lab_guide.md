[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Safe Process Monitoring Laboratory

## 🎯 Objective
Create a bounded synthetic CPU workload, identify it by PID and parent, observe host/process signals, stop it gracefully, record evidence and validate that no Day 004 process remains.

## 1️⃣ Create Branch and Lab Boundary
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-004-linux-process-monitoring
mkdir -p labs/day004 evidence/day004 screenshots/labs/day004
```

## 2️⃣ Capture Repository Safety
```bash
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## 3️⃣ Inspect Host and PID 1
```bash
uname -srmo
nproc
uptime
ps -p 1 -o pid,ppid,user,stat,comm,args
systemctl is-system-running || true
systemctl --failed --no-pager || true
```

## 4️⃣ Capture Resource Baseline
```bash
free -h
vmstat 1 5
ps -eo pid,ppid,user,stat,ni,pcpu,pmem,etime,comm --sort=-pcpu | head -n 20
```

## 5️⃣ Start Bounded Synthetic Workload
```bash
chmod +x scripts/day004/synthetic-cpu-workload.sh scripts/day004/stop-synthetic-workload.sh
./scripts/day004/synthetic-cpu-workload.sh
cat labs/day004/cpu-workload.pid
```

The script starts one controlled background process and stores the PID. It does not use sudo or modify system services.

## 6️⃣ Inspect the Workload
```bash
pid=$(cat labs/day004/cpu-workload.pid)
ps -p "$pid" -o pid,ppid,user,stat,ni,pcpu,pmem,etime,comm,args
cat "/proc/$pid/status" | head -n 25
cat /proc/loadavg
```

## 7️⃣ Graceful Stop and Validate
```bash
./scripts/day004/stop-synthetic-workload.sh
pgrep -af finbank-day004-cpu || echo 'EXPECTED: no Day004 workload remains'
```

## 8️⃣ Safe Failure Exercise
```bash
kill -TERM 999999 2> evidence/day004/invalid-pid-error.txt || true
cat evidence/day004/invalid-pid-error.txt
systemctl status finbank-day004-nonexistent.service --no-pager > evidence/day004/nonexistent-service.txt 2>&1 || true
head -n 20 evidence/day004/nonexistent-service.txt
```

## 9️⃣ Generate Audit and Validate
```bash
chmod +x scripts/day004/collect-process-baseline.sh scripts/day004/validate-day004.sh
./scripts/day004/collect-process-baseline.sh
./scripts/day004/validate-day004.sh
```

> [!CAUTION]
> Never kill unfamiliar PIDs, stop production services, run an unlimited fork loop, or use stress tools on the shared ShopSphere/FinBank host.

---

**🏦 FinBank AI DevSecOps · Day 004 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

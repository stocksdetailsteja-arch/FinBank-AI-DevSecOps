[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Safe User-Service Laboratory

## 🎯 Objective
Inspect boot and system services read-only, launch a user-level transient service, capture journal evidence, stop it safely and create a controlled failed user unit without changing system configuration.

## 1️⃣ Branch and Boundary
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-007-systemd-services-boot
mkdir -p labs/day007 evidence/day007 screenshots/labs/day007
```

## 2️⃣ Boot Baseline
```bash
ps -p 1 -o pid,ppid,user,stat,comm,args
systemctl get-default
systemd-analyze
systemd-analyze critical-chain | head -n 30
```

## 3️⃣ Unit and Journal Review
```bash
systemctl --failed --no-pager
systemctl list-units --type=service --state=running --no-pager | head -n 25
journalctl -b -p warning --no-pager | tail -n 30
journalctl --disk-usage
```

## 4️⃣ Start User Demo Service
```bash
chmod +x scripts/day007/start-user-demo-service.sh scripts/day007/stop-user-demo-service.sh
./scripts/day007/start-user-demo-service.sh
systemctl --user status finbank-day007-demo.service --no-pager
journalctl --user -u finbank-day007-demo.service -n 20 --no-pager
```

## 5️⃣ Stop and Validate
```bash
./scripts/day007/stop-user-demo-service.sh
systemctl --user is-active finbank-day007-demo.service || true
```

## 6️⃣ Controlled User-Unit Failure
```bash
systemd-run --user --unit=finbank-day007-failure --collect /bin/sh -c 'echo DAY007_CONTROLLED_FAILURE; exit 42' || true
systemctl --user status finbank-day007-failure.service --no-pager > evidence/day007/controlled-failure.txt 2>&1 || true
journalctl --user -u finbank-day007-failure.service -n 20 --no-pager > evidence/day007/controlled-failure-journal.txt 2>&1 || true
cat evidence/day007/controlled-failure.txt
```

## 7️⃣ Generate and Validate
```bash
chmod +x scripts/day007/*.sh
./scripts/day007/collect-systemd-baseline.sh
./scripts/day007/validate-day007.sh
```

> [!CAUTION]
> Do not run `systemctl stop`, `disable`, `mask`, `daemon-reload`, `set-default` or edits against system units during this lab.

---

**🏦 FinBank AI DevSecOps · Day 007 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Safe Logging & Diagnostics Laboratory

## 🎯 Objective
Inspect journald and rsyslog safely, review warnings and retention controls, generate synthetic tagged events, analyze severity/timeline and capture a controlled error without changing system logging configuration.

## 1️⃣ Branch and Boundary
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-008-linux-logging-observability
mkdir -p labs/day008 evidence/day008 screenshots/labs/day008
```

## 2️⃣ Platform Baseline
```bash
systemctl is-active systemd-journald.service
systemctl is-active rsyslog.service || true
systemctl show systemd-journald.service -p ActiveState -p SubState -p MainPID
journalctl --disk-usage
journalctl --list-boots | tail -n 10
```

## 3️⃣ System Log Review
```bash
journalctl -b -p warning --no-pager | tail -n 30
journalctl -u ssh.service -n 30 --no-pager 2>/dev/null || true
journalctl -b --since '30 minutes ago' --no-pager | tail -n 30
```

## 4️⃣ Retention and Rotation
```bash
grep -Ev '^[[:space:]]*(#|$)' /etc/systemd/journald.conf | head -n 40
journalctl --disk-usage
logrotate --version
sed -n '1,120p' /etc/logrotate.conf
```

## 5️⃣ Generate Synthetic Events
```bash
chmod +x scripts/day008/*.sh
./scripts/day008/generate-synthetic-logs.sh
journalctl -t finbank-day008 --since '10 minutes ago' --no-pager
```

## 6️⃣ Analyze Events
```bash
./scripts/day008/analyze-synthetic-logs.sh
cat evidence/day008/synthetic-log-analysis.md
```

## 7️⃣ Controlled Error Query
```bash
journalctl -t finbank-day008 -p err --since '10 minutes ago' --no-pager > evidence/day008/controlled-error.txt
cat evidence/day008/controlled-error.txt
```

## 8️⃣ Baseline and Validation
```bash
./scripts/day008/collect-logging-baseline.sh
./scripts/day008/validate-day008.sh
```

> [!CAUTION]
> Do not edit journald/rsyslog/logrotate configuration, vacuum logs, rotate logs manually, clear the journal or publish unrelated system events.

---

**🏦 FinBank AI DevSecOps · Day 008 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

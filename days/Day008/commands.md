[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Day 008 Command Center

## 🧭 Repository Safety
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## ⚙️ Service and Journal State
```bash
systemctl is-active systemd-journald.service
systemctl is-active rsyslog.service || true
journalctl --disk-usage
journalctl --list-boots | tail -n 10
```

## 🔎 Safe Filtering
```bash
journalctl -b -p warning --no-pager | tail -n 30
journalctl -u ssh.service -n 30 --no-pager 2>/dev/null || true
journalctl -t finbank-day008 --since '10 minutes ago' --no-pager
journalctl -t finbank-day008 -p warning --no-pager
```

## 🗃️ Rotation and Retention
```bash
grep -Ev '^[[:space:]]*(#|$)' /etc/systemd/journald.conf | head -n 40
logrotate --version
sed -n '1,120p' /etc/logrotate.conf
```

## ✅ Quality Gates
```bash
bash -n scripts/day008/collect-logging-baseline.sh
bash -n scripts/day008/generate-synthetic-logs.sh
bash -n scripts/day008/analyze-synthetic-logs.sh
bash -n scripts/day008/validate-day008.sh
git diff --check
```

---

**🏦 FinBank AI DevSecOps · Day 008 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

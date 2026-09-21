[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Day 007 Command Center

## 🧭 Safety
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## 🚀 Boot and Targets
```bash
ps -p 1 -o pid,ppid,user,stat,comm,args
systemctl get-default
systemd-analyze
systemd-analyze critical-chain | head -n 30
systemctl list-dependencies --plain --no-pager default.target | head -n 40
```

## ⚙️ Unit Inventory
```bash
systemctl --failed --no-pager
systemctl list-units --type=service --state=running --no-pager | head -n 30
systemctl show ssh.service -p Id -p ActiveState -p SubState -p UnitFileState -p MainPID 2>/dev/null || true
systemctl cat ssh.service 2>/dev/null | head -n 60 || true
```

## 🧾 Journal
```bash
journalctl -b -p warning --no-pager | tail -n 30
journalctl -u ssh.service -n 30 --no-pager 2>/dev/null || true
journalctl --disk-usage
```

## ✅ Quality
```bash
bash -n scripts/day007/collect-systemd-baseline.sh
bash -n scripts/day007/start-user-demo-service.sh
bash -n scripts/day007/stop-user-demo-service.sh
bash -n scripts/day007/validate-day007.sh
git diff --check
```

---

**🏦 FinBank AI DevSecOps · Day 007 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

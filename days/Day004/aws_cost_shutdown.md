[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 💰 AWS Cost & Shutdown Checklist

## ✅ Day 004 Cost Position
No AWS resources or packages are created. The lab uses one bounded process on the existing learning EC2 host.

## 🛑 End-of-Day Checks
- [ ] Synthetic workload stopped
- [ ] No Day 004 PID remains
- [ ] No system service changed
- [ ] No unplanned storage growth
- [ ] Shared EC2 stopped when safe for ShopSphere and FinBank
- [ ] Budget notifications remain active

## 🔍 Required Check
```bash
pgrep -af finbank-day004-cpu || echo 'PASS: no Day004 workload remains'
```

> [!CAUTION]
> Verify active workloads before stopping the shared EC2 instance. Stopping compute is a cost action that can interrupt both projects on the host.

---

**🏦 FinBank AI DevSecOps · Day 004 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 💰 AWS Cost & Shutdown Checklist

## ✅ Day 005 Cost Position
No AWS resources or packages are created. The service listens only on host loopback and is stopped before completion.

## 🛑 End-of-Day Checks
- [ ] Loopback HTTP service stopped
- [ ] No Day 005 PID or port remains
- [ ] No security group, route, DNS or firewall changed
- [ ] No unplanned network exposure
- [ ] Shared EC2 stopped when safe for both repositories
- [ ] Budget notifications remain active

## 🔍 Required Check
```bash
ss -lntp | grep '127.0.0.1:18080' || echo 'PASS: Day005 loopback listener absent'
```

---

**🏦 FinBank AI DevSecOps · Day 005 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

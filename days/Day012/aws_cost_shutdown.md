[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 💰 AWS Cost & Shutdown Checklist

No AWS resource is created. Before ending:
- [ ] No firewall, SSH, sysctl, AppArmor or service change
- [ ] Synthetic world-writable file restored to `600`
- [ ] No secret or sensitive inventory committed
- [ ] No background process remains
- [ ] Shared EC2 stopped when safe
- [ ] Budget alerts active

---

**🏦 FinBank AI DevSecOps · Day 012 of 120**
*Learn · Audit · Harden · Validate · Document · Improve*

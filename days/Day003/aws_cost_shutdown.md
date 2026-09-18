[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 💰 AWS Cost & Shutdown Checklist

## ✅ Day 003 Cost Position
Day 003 creates no AWS resources and requires no package installation. It uses only the existing learning host and repository-local synthetic files.

## 🛑 End-of-Day Checks
- [ ] No new EC2, EBS, Elastic IP, load balancer, NAT gateway, database or cluster
- [ ] No user, group or sudo policy created on the host
- [ ] No system binary permission changed
- [ ] Lab files remain small and synthetic
- [ ] Shared EC2 is stopped when safe for both projects
- [ ] Budget notifications remain active

> [!CAUTION]
> ShopSphere and FinBank share the EC2 host. Verify active processes and dependency impact before stopping the instance.

---

**🏦 FinBank AI DevSecOps · Day 003 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

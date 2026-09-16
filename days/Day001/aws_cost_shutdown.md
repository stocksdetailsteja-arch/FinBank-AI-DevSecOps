<p align="center">
  <a href="README.md">🏠 Overview</a> • <a href="concepts.md">🧠 Concepts</a> • <a href="lab_guide.md">🧪 Lab</a> • <a href="troubleshooting.md">🚨 Troubleshooting</a> • <a href="interview_questions.md">🎯 Interview</a> • <a href="screenshot_checklist.md">📸 Evidence</a>
</p>

---

# 💰 AWS Cost & Shutdown Guardrail

## ✅ Day 001 Cost Position
No new EC2 instance, volume, Elastic IP, load balancer, NAT gateway, database or EKS cluster is required.
## 🏷️ Future Tagging Standard
```text
Project=FinBank-AI-DevSecOps
Environment=lab
Owner=Akkana-Tejaswar-Sai
ManagedBy=Terraform
CostCenter=learning
ExpiryDate=YYYY-MM-DD
```
## 🛑 End-of-Day Check
- [ ] No accidental resource created
- [ ] Shared EC2 retained only if needed
- [ ] Budget alerts remain active
- [ ] Every retained resource has owner and expiry

> [!IMPORTANT]
> Never delete a resource by name alone. Confirm tags, dependencies, Terraform state ownership and impact first.
---

<p align="center"><strong>🏦 FinBank AI DevSecOps • Day 001 of 120</strong><br><sub>Learn • Build • Validate • Secure • Document • Improve</sub></p>

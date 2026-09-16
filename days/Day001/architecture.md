<p align="center">
  <a href="README.md">🏠 Overview</a> • <a href="concepts.md">🧠 Concepts</a> • <a href="lab_guide.md">🧪 Lab</a> • <a href="troubleshooting.md">🚨 Troubleshooting</a> • <a href="interview_questions.md">🎯 Interview</a> • <a href="screenshot_checklist.md">📸 Evidence</a>
</p>

---

# 🏗️ Learning Environment Architecture

## 🗺️ Context Diagram
```mermaid
flowchart TB
  U[Engineer] --> SSH[Secure Shell]
  SSH --> EC2[Shared Learning Host]
  EC2 --> SS[ShopSphere Directory + .git]
  EC2 --> FB[FinBank Directory + .git]
  SS --> SSR[(ShopSphere GitHub)]
  FB --> FBR[(FinBank GitHub)]
  FB --> CLI[AWS and DevOps CLI]
  FB --> DOC[Docs, Labs, Evidence]
```
## 🔐 Isolation Boundary
The repositories share compute only. They do not share Git metadata, histories, remotes, application configuration or deployment targets.

> [!IMPORTANT]
> Future FinBank resources receive separate names, tags, Terraform state and CI/CD identities. ShopSphere resources are not reused without an explicit architecture decision.
---

<p align="center"><strong>🏦 FinBank AI DevSecOps • Day 001 of 120</strong><br><sub>Learn • Build • Validate • Secure • Document • Improve</sub></p>

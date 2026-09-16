[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🏗️ Learning Environment Architecture

```mermaid
flowchart TB
  U[Engineer] --> SSH[Secure Shell]
  SSH --> EC2[Shared Learning Host]
  EC2 --> SS[ShopSphere Directory and Git Metadata]
  EC2 --> FB[FinBank Directory and Git Metadata]
  SS --> SSR[(ShopSphere GitHub)]
  FB --> FBR[(FinBank GitHub)]
  FB --> CLI[AWS and DevOps CLI]
  FB --> DOC[Documentation, Labs and Evidence]
```

## 🔐 Isolation Boundary
The projects share compute only. Git metadata, histories, remotes, configurations and deployment targets remain separate.

> [!IMPORTANT]
> Future FinBank resources receive separate names, tags, state and CI/CD identities.

---

**🏦 FinBank AI DevSecOps · Day 001 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Production Troubleshooting Playbook

> [!TIP]
> Use impact → evidence → hypotheses → safe mitigation → root cause → durable fix → validation → prevention.

## 🚨 Wrong Repository Staged
Stop before commit. Verify path, root, branch, remote and staged diff. Unstage only reviewed paths. Never delete blindly.
## 🔑 SSH Push Failure
Verify remote URL, loaded identity, key permission and GitHub registration before replacing any key.
## 📁 Empty Directories Missing
Git tracks files, not empty directories. Add meaningful content or an intentional `.gitkeep`.
## ☁️ AWS Credentials Missing or Expired
Inspect profile, environment and credential source. Refresh through the approved mechanism. Do not bypass temporary credentials with permanent keys.
## 💽 Disk Pressure
Compare filesystem capacity, inodes and scoped directory usage. Preserve evidence before deletion.
## 🤖 AI Suggests Destructive Command
Block execution, resolve variables, require dry run, narrow scope, verify backup and require approval.

---

**🏦 FinBank AI DevSecOps · Day 001 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

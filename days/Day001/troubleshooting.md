<p align="center">
  <a href="README.md">🏠 Overview</a> • <a href="concepts.md">🧠 Concepts</a> • <a href="lab_guide.md">🧪 Lab</a> • <a href="troubleshooting.md">🚨 Troubleshooting</a> • <a href="interview_questions.md">🎯 Interview</a> • <a href="screenshot_checklist.md">📸 Evidence</a>
</p>

---

# 🚨 Production Troubleshooting Playbook

> [!TIP]
> Use: impact → evidence → hypotheses → safe mitigation → root cause → durable fix → validation → prevention.

## 🚨 Scenario 1: Wrong Repository Staged
**Signal:** unrelated files appear in `git status`.
**Action:** stop before commit. Verify `pwd`, repository root, branch, remote and staged diff. Unstage only reviewed paths. Never delete blindly.

## 🔑 Scenario 2: SSH Push Fails
Verify remote URL, loaded identities, private-key permission and GitHub registration. Use `ssh -T git@github.com` only after confirming which identity should be used.

## 📁 Scenario 3: Empty Directories Missing
Git tracks files, not empty directories. Add a meaningful README or intentional `.gitkeep`. Inspect ignores with `git check-ignore -v <path>`.

## ☁️ Scenario 4: AWS Credentials Missing or Expired
Inspect profile, environment and credential source. Refresh through the approved mechanism. Do not bypass temporary credentials with permanent keys.

## 💽 Scenario 5: Disk Pressure
Compare `df -hT`, `df -ih` and scoped `du`. Preserve evidence and understand ownership before deleting logs or databases.

## 🤖 Scenario 6: AI Suggests Destructive Command
Block execution. Resolve variables, require a listing or dry run, narrow the allowlisted path, confirm backup and require human approval.
---

<p align="center"><strong>🏦 FinBank AI DevSecOps • Day 001 of 120</strong><br><sub>Learn • Build • Validate • Secure • Document • Improve</sub></p>

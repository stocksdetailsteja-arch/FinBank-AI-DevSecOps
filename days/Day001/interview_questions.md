<p align="center">
  <a href="README.md">🏠 Overview</a> • <a href="concepts.md">🧠 Concepts</a> • <a href="lab_guide.md">🧪 Lab</a> • <a href="troubleshooting.md">🚨 Troubleshooting</a> • <a href="interview_questions.md">🎯 Interview</a> • <a href="screenshot_checklist.md">📸 Evidence</a>
</p>

---

# 🎯 Senior MNC-Style Interview Zone

> [!NOTE]
> These are original enterprise-style practice questions, not leaked or verbatim questions from any employer.

## 1️⃣ How do you prevent pushing to the wrong repository?
**Strong answer:** verify working directory, repository root, branch, remote and the staged diff. Use separate top-level directories and environment restrictions in CI. If a secret was pushed, revoke and rotate first, then repair history according to policy.

## 2️⃣ Why are empty directories absent from Git?
Git records files and tree relationships, not empty directories. Add meaningful content or an intentional `.gitkeep`.

## 3️⃣ Can two projects safely share one EC2 host?
For learning, yes, if repositories, ports, processes, secrets, names and deployment targets are separated. Stronger isolation later uses containers, users or separate environments.

## 4️⃣ Define least privilege.
Minimum actions on minimum resources for minimum duration under appropriate conditions, with review, revocation and audit evidence.

## 5️⃣ What if someone asks for AWS keys in an AI prompt?
Refuse, sanitize the context and use approved tools. If exposure may have occurred, revoke and rotate immediately.

## 6️⃣ Does an AWS Budget automatically stop spending?
A budget is a detection and notification control unless a configured action exists. Combine it with ownership, cleanup and daily review.

## 7️⃣ Why is `git diff --cached` essential?
It shows the exact staged content intended for the next commit. `git diff` shows only unstaged changes.

## 8️⃣ Explain DevOps to a banking stakeholder.
A controlled delivery and operations model that improves feedback while preserving traceability, security, validation, approval, observability and recovery.

## ⚡ Follow-Up Drills
Working tree vs index; role vs user; disk vs inode exhaustion; preventive vs detective control; evidence vs successful command.
---

<p align="center"><strong>🏦 FinBank AI DevSecOps • Day 001 of 120</strong><br><sub>Learn • Build • Validate • Secure • Document • Improve</sub></p>

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Senior MNC-Style Interview Zone

> [!NOTE]
> Original enterprise-style practice material, not leaked or verbatim employer questions.

## 1️⃣ How do you prevent pushing to the wrong repository?
Verify working directory, repository root, branch, remote and staged diff. Separate top-level directories and constrain CI environments. If a secret was pushed, revoke and rotate first.
## 2️⃣ Why are empty directories absent from Git?
Git records files and tree relationships, not empty directories.
## 3️⃣ Can two projects share one EC2 host?
For controlled learning, yes, if repositories, processes, ports, secrets, names and targets are isolated.
## 4️⃣ Define least privilege.
Minimum actions on minimum resources for minimum duration and suitable conditions, with review and revocation.
## 5️⃣ What if AWS keys are requested in an AI prompt?
Refuse, sanitize context and rotate immediately if exposure may have occurred.
## 6️⃣ Does an AWS Budget stop spending?
Treat it as monitoring and notification unless an explicit action is configured. Pair with cleanup and ownership.
## 7️⃣ Why use `git diff --cached`?
It shows the exact staged content intended for the next commit.
## 8️⃣ Explain DevOps to a banking stakeholder.
A controlled delivery and operations model preserving traceability, security, validation, approval, observability and recovery.

---

**🏦 FinBank AI DevSecOps · Day 001 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

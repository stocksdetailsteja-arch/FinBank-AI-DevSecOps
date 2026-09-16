[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Concepts & Engineering Principles

## 🎯 Learning Map
| Concept | Senior-level outcome |
|---|---|
| DevOps operating model | Controlled flow, feedback and recovery |
| Git isolation | Separate history, destination and staged intent |
| Linux baseline | Known-good evidence for diagnosis |
| Least privilege | Minimum actions, resources and duration |
| Cost governance | Ownership, expiry, detection and cleanup |
| Responsible AI | Sanitized context and independently validated output |

## 🔄 DevOps Operating Model
DevOps joins product ownership, delivery and operations through small controlled changes, automated verification, observability and rapid recovery.

## 🔐 Repository Isolation
A repository is defined by its `.git` directory. Verify `pwd`, repository root, branch, remote and staged diff before every commit.

## 🐧 Linux Baseline
Capture identity, OS, kernel, CPU, memory, storage, network, processes and tool versions. Compare degraded behavior against this known-good state.

## 🤖 AI-Assisted Engineering
Treat generated output as untrusted. Sanitize input, constrain scope, test commands, inspect diffs and require human approval for privileged action.

> [!WARNING]
> AI convenience never overrides least privilege, validation, rollback or auditability.

---

**🏦 FinBank AI DevSecOps · Day 001 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

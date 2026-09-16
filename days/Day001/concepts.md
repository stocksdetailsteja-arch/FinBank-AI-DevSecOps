<p align="center">
  <a href="README.md">🏠 Overview</a> • <a href="concepts.md">🧠 Concepts</a> • <a href="lab_guide.md">🧪 Lab</a> • <a href="troubleshooting.md">🚨 Troubleshooting</a> • <a href="interview_questions.md">🎯 Interview</a> • <a href="screenshot_checklist.md">📸 Evidence</a>
</p>

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

## 🔄 DevOps Is an Operating Model
DevOps combines product ownership, software delivery and operational feedback. Tools enable the model, but the core behavior is small controlled changes, automated verification, observable outcomes, shared responsibility and rapid recovery.

## 🔐 Repository Isolation
A repository is defined by its `.git` directory. Two applications can share an EC2 host while retaining separate histories and remotes.

### 🧭 Five-Point Safety Check
1. `pwd` verifies the workspace.
2. `git rev-parse --show-toplevel` verifies the root.
3. `git branch --show-current` verifies the branch.
4. `git remote -v` verifies the destination.
5. `git diff --cached` verifies staged intent.

## 🐧 Linux Baseline
Capture identity, OS, kernel, CPU, memory, storage, network, processes and tool versions. A baseline enables evidence-based comparison during an incident.

## 🤖 AI-Assisted Engineering
Treat generated output as an untrusted draft. Sanitize input, state constraints, test commands, inspect diffs and require human approval for privileged or production-impacting action.

> [!WARNING]
> Never allow AI convenience to bypass least privilege, validation, rollback or auditability.
---

<p align="center"><strong>🏦 FinBank AI DevSecOps • Day 001 of 120</strong><br><sub>Learn • Build • Validate • Secure • Document • Improve</sub></p>

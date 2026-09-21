[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Senior MNC-Style Interview Questions & Answers

> [!NOTE]
> Original enterprise-style practice content, not leaked or verbatim employer questions.

## 1️⃣ APT vs dpkg?
APT resolves repositories and dependencies; dpkg manages the local Debian package database and low-level install state.

## 2️⃣ Installed vs candidate version?
Installed is present locally. Candidate is the version selected by APT policy from configured sources.

## 3️⃣ Why simulate an upgrade?
To inspect planned installs, upgrades, removals and held packages without applying changes. Application compatibility still requires testing.

## 4️⃣ What is a held package?
A package excluded from normal upgrades. Holds need owner, reason, security review and expiry because they can create drift.

## 5️⃣ How are repositories trusted?
Through approved source configuration and signed metadata/package verification. Trust must not be bypassed when signatures fail.

## 6️⃣ What is a conffile?
A package-declared configuration file tracked by dpkg, with special handling for local modifications during upgrades.

## 7️⃣ Why can patching require a reboot?
A running kernel or processes may still use old code. Tools and service-impact analysis determine whether restart/reboot is required.

## 8️⃣ What does `dpkg -V` do?
It verifies selected installed-file attributes against package metadata where available. Results require interpretation and do not replace broader integrity controls.

## 9️⃣ How do you patch a banking production fleet?
Inventory, risk assess, test progressively, approve, canary, monitor business and technical KPIs, enforce stop criteria and retain rollback evidence.

## 🔟 Why not use `apt upgrade -y` blindly?
It removes review of scope, compatibility, restart, conffile and rollback decisions, increasing outage and security risk.

## 1️⃣1️⃣ What causes dependency conflicts?
Repository mismatch, pins, holds, architecture, partial states or incompatible version requirements.

## 1️⃣2️⃣ How do immutable images change patching?
Replace instances with tested patched images instead of mutating hosts, reducing drift while requiring disciplined rollout and data separation.

## 1️⃣3️⃣ How do you prioritize CVE remediation?
Consider exploitability, exposure, asset criticality, available fix, compensating controls and business impact, not severity score alone.

## 1️⃣4️⃣ What evidence closes a patch change?
Approved scope, versions, test results, deployment logs, health/business validation, exceptions, rollback status and monitoring evidence.

## 1️⃣5️⃣ Banking scenario: patch causes payment latency. What next?
Stop rollout, assess canary and dependency evidence, protect transaction integrity, rollback or mitigate through the approved plan, then reconcile uncertain operations.

---

**🏦 FinBank AI DevSecOps · Day 006 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Package Management & Software Lifecycle Concepts

## 🗺️ Concept Matrix

| Concept | Meaning | Production concern |
|---|---|---|
| package | versioned software plus metadata | compatibility and provenance |
| dpkg | low-level Debian package database/tool | incomplete configuration state |
| APT | dependency-aware package manager | repository and policy selection |
| repository | package and metadata source | trust and availability |
| candidate | version APT would select | unexpected upgrade scope |
| dependency | required package relationship | cascading changes |
| hold | suppress automatic package upgrade | security drift if forgotten |
| conffile | package-managed configuration file | local changes and prompts |
| simulation | calculate actions without applying | planning evidence |
| rollback | return to known safe state | versions may not remain available |

## 🔗 APT and dpkg Relationship
APT resolves repositories, policies and dependencies. dpkg records installed package state and performs low-level package operations. APT normally invokes dpkg during managed changes.

## 🔐 Repository Trust
Repository metadata and package verification protect software supply chains. Trust depends on approved source configuration, signing keys, metadata freshness and transport/host controls. Never add an unreviewed repository to solve a missing package.

## 🧮 Version Selection
APT considers configured sources, priorities, architecture and policy. `apt-cache policy` shows installed and candidate versions. A candidate can differ across environments if source configuration differs.

## 🧪 Simulation
`apt-get -s upgrade` calculates a prospective plan without installing it. Simulation is valuable evidence, but it does not prove application compatibility or guarantee that repository state will remain unchanged later.

## 🧾 Configuration Files
Package upgrades can preserve or prompt about modified conffiles. Application configuration, service override and secret management must be separated from package files and included in rollback planning.

## ♻️ Rollback Reality
Rollback may require a previously retained package, repository availability, configuration backup, database compatibility and service-state validation. VM snapshots alone are not a complete transaction-safe rollback strategy.

> [!TIP]
> Patch decisions require package evidence, application testing, operational impact, security severity, maintenance window, rollback and post-change validation.

---

**🏦 FinBank AI DevSecOps · Day 006 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)
---
# ⌨️ Explained Patch Command Center
> [!NOTE]
> Every command in this guide is read-only or simulated. The lab never installs, removes, holds, unholds, restarts, reboots, or edits repositories.
## 📦 `apt list --upgradable`
```bash
apt list --upgradable
```
### Purpose
Lists packages for which APT currently knows a newer candidate.
### Important Output
| Field | Meaning |
|---|---|
| package | binary package name |
| suite | repository pocket or channel |
| candidate | version APT would select |
| architecture | package architecture |
| installed version | current host version |
### Production Use
Estimate patch scope and identify packages requiring provenance, applicability, dependency, and change-readiness review.
### Banking Example
A payment host shows a cryptographic-library candidate. The team validates whether the running services load the library, whether the vendor advisory applies, and whether a restart or rolling failover is required.
### Interview Tip
An upgradable package is not automatically vulnerable, urgent, compatible, or approved.
## 🧭 `apt-cache policy`
```bash
apt-cache policy openssh-server
```
### Purpose
Shows installed version, candidate version, repository origin, and priority.
### Interpretation
Unexpected origin or priority is a supply-chain and configuration investigation, not a reason to proceed with installation.
### Production Use
Troubleshoot pinning, candidate selection, unapproved mirrors, and inconsistent servers.
## 🧾 `dpkg-query`
```bash
dpkg-query -W -f='${Package} ${Version} ${Architecture}
' | sort
```
### Purpose
Creates deterministic installed-package evidence.
### Uses
- baseline comparison
- audit and vulnerability scope
- image drift analysis
- SBOM enrichment
### Security Note
Do not publish complete production inventories or private repository data.
## 🔗 Dependency Review
```bash
apt-cache depends openssh-server
apt-cache rdepends openssh-server
```
### Purpose
Reviews declared forward and reverse dependencies.
### Limitation
Runtime, application, plugin, and dynamically loaded dependencies may not appear. Representative application testing remains mandatory.
## 🔍 `dpkg -V`
```bash
dpkg -V openssh-server
```
### Purpose
Compares selected package-managed file attributes with package metadata.
### Interpretation
Output is an investigation lead. Legitimate configuration changes can differ from defaults.
## 🧪 `apt-get -s upgrade`
```bash
apt-get -s upgrade
```
### Purpose
Simulates dependency resolution and proposed actions without applying them.
### Review For
- package installations
- removals
- held packages
- dependency chains
- unexpected scope
### Safety
The simulation flag is mandatory in this lab.
## 🔄 Reboot Marker
```bash
if test -f /var/run/reboot-required; then cat /var/run/reboot-required; else echo 'No reboot-required marker'; fi
```
### Purpose
Reviews the operating-system reboot marker.
### Limitation
Processes can continue using old libraries even without a reboot marker. Production validation also reviews process restarts and running kernel state.
## 🛠️ Packaged Scripts
```bash
./scripts/day019/collect-patch-baseline.sh
./scripts/day019/analyze-vulnerability-priority.sh
./scripts/day019/review-change-readiness.sh
./scripts/day019/generate-patch-decision-record.sh
./scripts/day019/validate-day019.sh
```
### Evidence Produced
| Script | Artifact | Use |
|---|---|---|
| baseline | `patch-baseline.md` | OS, kernel, package and reboot state |
| priority | `vulnerability-priority-review.md` | risk dimensions and decision rule |
| readiness | `change-readiness-review.md` | simulation, gates, recovery and validation |
| decision | `patch-decision-record.md` | architecture, trade-offs and rollback |
| validator | terminal PASS or FAIL | final release gate |
## 🏦 Banking Use
Commands support change planning, but service recovery is incomplete until payment, idempotency, queue, database, ledger, reconciliation, fraud-control, and audit checks pass.
## ✅ Command Safety Summary
- No installation or upgrade
- No repository modification
- No holds or unholds
- No service restart
- No reboot
- No AWS mutation
- No secrets in evidence
---
**🏦 FinBank AI DevSecOps · Day 019 of 120**
*Discover · Prioritize · Patch · Validate · Recover · Govern*

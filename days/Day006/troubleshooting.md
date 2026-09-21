[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Production Package Troubleshooting

> [!TIP]
> Preserve package database, source configuration, logs and exact command output before repair. Avoid stacking recovery commands without understanding state.

## 1. `dpkg was interrupted`
Inspect dpkg/apt processes and logs, confirm no active package operation, assess disk space and package state, then execute approved recovery under change control.

## 2. Unmet Dependencies
Identify repository consistency, pinned/held versions, architecture and partially installed packages. Do not force-remove critical dependencies.

## 3. Package Not Found
Check spelling, architecture, source configuration and metadata freshness. Adding an arbitrary repository creates supply-chain risk.

## 4. NO_PUBKEY or Signature Failure
Stop. Validate approved key/source ownership and metadata. Never bypass signature checks or use an untrusted key retrieved from an arbitrary site.

## 5. Conffile Prompt During Upgrade
Compare local and packaged versions. Preserve environment-specific configuration and secrets, test merged configuration and document the decision.

## 6. Service Fails After Library Upgrade
Inspect dependency versions, dynamic linking, unit logs and application compatibility. Rollback or forward-fix through an approved tested path.

## 7. Package Is Held During Security Event
Determine why it was held, security severity, compatibility dependency and compensating controls. A forgotten hold creates vulnerability debt.

## 8. Disk Full During Upgrade
Protect dpkg database consistency, identify the affected filesystem and approved cleanup. Do not delete package database or audit evidence.

## 9. Repository Returns 404 for Release
The distribution or repository path may be obsolete or mismatched. Move to an approved supported source or platform version through planned change.

## 10. Rollback Version Is Unavailable
Use approved retained artifacts, snapshots/images or rebuild strategy. Validate config/data compatibility; never assume downgrade is safe.

---

**🏦 FinBank AI DevSecOps · Day 006 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

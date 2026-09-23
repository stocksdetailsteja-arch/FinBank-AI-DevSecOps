[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Advanced Security Troubleshooting & RCA Playbook

## Scenario 1: Administrators Locked Out After SSH Change
**Symptoms:** new connections fail; existing session may still work.
**Evidence:** effective config, syntax test, includes, service logs, network path, authentication method, console availability.
**Investigation:** distinguish daemon syntax, auth policy, key ownership, PAM, firewall, and network causes.
**Root Cause:** unsupported setting, include precedence, lost key path, or restrictive policy.
**Fix:** use approved recovery access and restore a validated configuration.
**Rollback:** preserve the active session and revert the reviewed change.
**Prevention:** syntax check, secondary session, canary host, console path, peer review.
**Banking Impact:** delayed incident response and operational access loss.

## Scenario 2: User Is in Group but Access Is Denied
**Symptoms:** directory or application access fails after membership change.
**Evidence:** `id`, effective session groups, modes, ACL, mask, path traversal, application identity.
**Investigation:** determine whether session refresh, ACL mask, parent directory, or service-level authorization blocks access.
**Root Cause:** stale session or misunderstood effective ACL.
**Fix:** establish a new approved session or correct narrowly scoped authorization.
**Rollback:** restore prior ACL/group state if change causes broader access.
**Prevention:** access tests and recertification.
**Banking Impact:** delayed operations or unauthorized workaround risk.

## Scenario 3: sudo Rule Exists but Command Is Denied
**Symptoms:** operator sees a sudo authorization error.
**Evidence:** `sudo -l`, exact command path/arguments, run-as identity, host matching, include/alias order.
**Investigation:** compare effective policy with attempted execution.
**Root Cause:** path, argument, alias, run-as, or host mismatch.
**Fix:** correct the minimum approved rule using validated change procedure.
**Prevention:** command-specific testing and ownership.
**Banking Impact:** incident action delay or pressure to seek unsafe broad access.

## Scenario 4: PAM Change Blocks Authentication
**Symptoms:** multiple access methods fail despite correct credentials.
**Evidence:** PAM stack order/control flags, module availability, auth logs, recovery session.
**Investigation:** identify failing function and module without repeated lockout attempts.
**Fix:** recover through console/break-glass and restore reviewed stack.
**Rollback:** revert the exact approved change.
**Prevention:** canary, test account, peer review, recovery validation.
**Banking Impact:** widespread administrative and service-authentication outage.

## Scenario 5: Unexpected SUID Binary
Verify package ownership, checksum, purpose, provenance, vulnerability exposure, mount context, and replacement options before removing any bit.

## Scenario 6: AppArmor Denial Breaks Payment Service
Preserve denial evidence, identify the minimal required operation, test a narrow profile update, retain enforcement where possible, and validate transaction behavior.

## Scenario 7: World-Writable Directory Is Business Required
Assess sticky bit, owner, creation pattern, executable/device/set-ID behavior, application design, cleanup, and compensating controls. Document exception and expiry.

## Scenario 8: Privileged Activity Cannot Be Attributed
Eliminate shared identities, enforce named access, centralize audit evidence, govern break-glass use, rotate credentials, and review the control gap.

---

**🏦 FinBank AI DevSecOps · Day 018 of 120**
*Harden · Verify · Govern · Detect · Recover · Improve*

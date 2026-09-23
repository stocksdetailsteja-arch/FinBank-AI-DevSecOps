[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Read-Only Security Hardening & Compliance Lab

> [!IMPORTANT]
> No account, password, group, sudoers, PAM, SSH, ACL, system-file mode, AppArmor, sysctl, service, firewall, or package change is permitted. Only a repository-local synthetic file is created with safe mode `600`.

## Phase 1: Repository Safety
Create `day-018-enterprise-linux-security-compliance`, verify the FinBank root/origin, and verify ShopSphere is clean.

## Phase 2: Identity and Privilege Baseline
Capture the current identity, privileged group membership, human-range local accounts, service-account characteristics, and effective sudo policy.

## Phase 3: SSH and PAM Awareness
Review effective SSH security settings and configuration-path ownership. Review PAM configuration paths and package presence without reading secrets or editing the stack.

## Phase 4: File Security
Create `labs/day018/security-demo.txt` with mode `600`. Review exact mode, ACL capability, bounded set-ID inventory, and world-writable findings within `labs/day018` only.

## Phase 5: Host Controls
Review AppArmor state and selected kernel controls. Record unsupported or unavailable controls as evidence rather than changing the host.

## Phase 6: Evidence Generation
Run four evidence scripts and inspect the identity baseline, privilege/SSH review, file-security review, and architecture decision.

## Phase 7: Controlled Failure

```bash
set +e
./scripts/day018/audit-file-security.sh --unsupported
echo "controlled_exit_code=$?"
set -e
```

## Phase 8: Final Validation
Run the validator, normalize evidence, inspect Git status, and run `git diff --check`.

---

**🏦 FinBank AI DevSecOps · Day 018 of 120**
*Harden · Verify · Govern · Detect · Recover · Improve*

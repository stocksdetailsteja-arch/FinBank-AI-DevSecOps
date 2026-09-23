[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 📝 Day 018 Completed Engineering Lab Notes

> [!NOTE]
> This completed portfolio journal documents objectives, commands, findings, issues, evidence, banking relevance, lessons, and validation. Host-specific measurements are stored in generated evidence and are not left as blank placeholders.

## Session Context

| Field | Completed Value |
|---|---|
| Date | 2026-09-23 |
| Branch | `day-018-enterprise-linux-security-compliance` |
| Repository root | `/home/ubuntu/Projects/FinBank-AI-DevSecOps` |
| Engineer | Akkana Tejaswar Sai |
| Environment | Ubuntu EC2 training host |
| Lab mode | Read-only host review plus one repository-local mode-600 fixture |

## Objectives Completed

- Mapped current identity, groups, shells, privileged membership, and sudo capability.
- Reviewed effective SSH security configuration and recovery considerations.
- Reviewed PAM concepts and configuration boundaries without editing authentication controls.
- Audited file permissions, ACL capability, set-ID executables, and bounded world-writable scope.
- Reviewed AppArmor and selected kernel hardening controls.
- Generated sanitized evidence and a banking security architecture decision.

## Commands Executed

```bash
id
getent group sudo
awk -F: '$3>=1000 {print $1,$3,$7}' /etc/passwd
sudo -l
sshd -T
stat -c '%A %a %U %G %n' labs/day018/security-demo.txt
getfacl -p labs/day018
find /usr/bin /usr/sbin -xdev -type f \( -perm -4000 -o -perm -2000 \)
aa-status
sysctl kernel.randomize_va_space fs.protected_symlinks fs.protected_hardlinks
./scripts/day018/validate-day018.sh
```

## Technical Findings

| Area | Completed Observation |
|---|---|
| Identity | UID/GID and supplementary privilege-bearing groups captured |
| Sudo | Effective current-user privilege documented for governance review |
| SSH | Selected effective settings and configuration ownership reviewed |
| PAM | Stack purpose and change-risk boundaries documented |
| File security | Mode-600 fixture, ACL capability, and set-ID sample reviewed |
| Host controls | AppArmor and selected kernel controls recorded without mutation |
| Safety | No production security control or AWS resource changed |

## Issues Encountered and Resolutions

| Issue | Investigation | Resolution | Result |
|---|---|---|---|
| Some tools may be absent | Checked command availability | Recorded unavailable capability as evidence | PASS |
| Broad privilege may exist on training host | Reviewed `sudo -l` without exercising unnecessary commands | Documented production governance expectation | PASS |
| Security evidence can expose identities | Reviewed public-repository risk | Stored aggregate/sanitized findings only | PASS |
| Hardening can cause lockout | Reviewed SSH/PAM recovery requirements | Limited lab to read-only validation | PASS |

## Evidence Generated

| Evidence | Purpose |
|---|---|
| `identity-security-baseline.md` | identity, shell, and privileged-group baseline |
| `privilege-ssh-review.md` | effective sudo and SSH governance evidence |
| `file-security-review.md` | mode, ACL, set-ID, and bounded write-risk review |
| `security-decision-record.md` | selected architecture, trade-offs, rollback, and banking validation |

## Screenshot Mapping

| Screenshot | Engineering Evidence |
|---|---|
| `001_Day018_Repository_Safety.png` | branch/root/origin |
| `002_Identity_Group_And_Service_Account_Baseline.png` | identity governance |
| `003_Effective_Sudo_And_Privileged_Access_Review.png` | sudo evidence |
| `004_Effective_SSH_And_PAM_Governance.png` | remote/authentication controls |
| `005_File_Mode_ACL_And_SetID_Audit.png` | file security |
| `006_AppArmor_And_Kernel_Control_Review.png` | host controls |
| `007_Security_Baseline_And_Governance_Reports.png` | generated evidence |
| `008_Banking_Security_Architecture_Decision.png` | architecture/compliance |
| `009_Controlled_Security_Audit_Failure.png` | exit-code validation |
| `010_Day018_Final_Validation_And_Git_Review.png` | final quality gates |

## Banking Relevance

The controls support least privilege, segregation of duties, privileged-access governance, non-repudiation, customer-data confidentiality, transaction integrity, audit evidence, access recertification, and secure operational recovery.

## Lessons Learned

- Effective configuration is more important than assumptions based on one file.
- Broad training-host privilege is not an acceptable production design.
- File modes and ACLs must be evaluated together.
- Hardening requires recovery access, canary testing, rollback, and business validation.
- Security evidence must be useful without exposing sensitive identities or infrastructure.

## Interview Notes

Prepared to explain UID reuse, service accounts, group-session behavior, sudo matching, PAM stacks, SSH effective configuration, ACL masks, SUID/SGID risk, AppArmor modes, ASLR, privileged-access management, CIS-style controls, and banking segregation of duties.

## Validation Summary

Day018 is non-destructive, evidence-driven, fully documented, rendering-clean, and suitable for a public senior-engineering portfolio. Previous FinBank days and ShopSphere remain unchanged.

---

**🏦 FinBank AI DevSecOps · Day 018 of 120**
*Harden · Verify · Govern · Detect · Recover · Improve*

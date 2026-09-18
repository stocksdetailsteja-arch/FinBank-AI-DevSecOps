[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 📝 Day 003 Engineering Lab Notes

## 🧭 Session Context
- Date:
- Branch:
- Repository root:
- Origin:

## 👤 Identity Baseline
| Signal | Observation |
|---|---|
| username | |
| UID | |
| primary GID | |
| primary group | |
| supplementary groups | |
| shell | |

## 🔢 Permission Analysis
| Path | Symbolic mode | Octal mode | Owner/group | Reason |
|---|---|---:|---|---|
| private directory | | | | |
| private file | | | | |
| collaboration directory | | | | |
| shared-drop directory | | | | |

## 🧪 Umask Experiment
- Original umask:
- Test umask:
- File result:
- Directory result:
- Explanation:

## 🧾 ACL Capability
- Tools available:
- Filesystem supports ACL test:
- Effective ACL finding:
- If unavailable, documented gap:

## 🚨 Failure and Recovery
- Symptom:
- Evidence file:
- Root cause:
- Minimal recovery:
- Validation:
- Prevention:

## 🤖 AI Validation Record
- Sanitized question:
- Proposed permission change:
- Risk classification:
- Evidence used:
- Human correction:

## 🏦 Banking Reflection
- Least-privilege control:
- Segregation-of-duties lesson:
- Audit implication:

## 👤 Linux Identity Analysis

### Current Identity

Username:
ubuntu
UID:
1000
Primary GID:
1000
Primary Group:
ubuntu:x:1000:
### Engineering Observation

Linux authorization relies primarily on
numeric identifiers (UID and GID).

Usernames and group names are mappings
used for administrative convenience.

Kernel authorization decisions are
ultimately based on UID, GID and group
membership.

### Security Observation

Using dedicated service accounts helps
enforce least privilege and improve
auditability.

Shared identities should be avoided
because they reduce accountability.

### Banking Production Relevance

Banking applications typically use
separate service identities for:

- Payment processing
- Ledger operations
- Audit collection
- Deployment automation

This supports segregation of duties and
reduces the impact of compromised accounts.

### Screenshot Reference

Evidence File:

002_Linux_UID_GID_And_Groups.png

## 🔐 Ownership And Permission Matrix Analysis

### Private Directory

Path:
labs/day003/private

Permission:
700

Owner:
ubuntu

Group:
ubuntu

Observation:

Only the owner has access.

No group or other user access exists.

Suitable for sensitive application data.

### Private File

Path:
labs/day003/private/profile.txt

Permission:
600

Owner:
ubuntu

Group:
ubuntu

Observation:

Only the owner can read and modify the file.

No access is granted to group members
or other users.

### Collaboration Directory

Path:
labs/day003/collaboration

Permission:
2770

Special Bit:
SGID

Observation:

New files created inside this directory
inherit the directory group.

This supports controlled collaboration.

### Shared Drop Directory

Path:
labs/day003/shared-drop

Permission:
1770

Special Bit:
Sticky Bit

Observation:

Users can create files but cannot
delete files owned by other users.

This is the same principle used by
the Linux /tmp directory.

### Banking Production Relevance

Sensitive banking data should never
be accessible through broad permissions.

The principle of least privilege requires:

- Restricted ownership
- Minimal group access
- Controlled collaboration directories
- Protected shared locations

### Screenshot Reference

Evidence File:

003_Ownership_And_Permission_Matrix.png

## 🛣️ Path Traversal Analysis

### Command

namei -l profile.txt path

### Observation

Linux evaluated every parent directory
from the filesystem root to the target file.

Path Components:

/
home
ubuntu
Projects
FinBank-AI-DevSecOps
labs
day003
private
profile.txt

### Engineering Learning

Access to a file depends on more than
the file permission itself.

All parent directories must allow
successful traversal.

A file configured as 600 may still
be inaccessible if a parent directory
does not provide execute permission.

### Banking Production Relevance

Many production incidents occur because
application users have access to a file
but cannot traverse the full path.

Understanding path traversal is essential
for troubleshooting permission-denied
errors in banking systems.

### Screenshot Reference

004_Namei_Path_Traversal_Analysis.png


## 🎭 Umask Analysis

### Test Configuration

Applied Umask:

027

### Created Objects

File:

new-file

Permission:

640

Directory:

new-directory

Permission:

750

### Engineering Observation

Umask does not add permissions.

It removes permissions from the
default creation mode.

File Creation:

666 - 027 = 640

Directory Creation:

777 - 027 = 750

### Security Observation

Using restrictive umask settings helps
prevent accidental exposure of data.

Group access remains controlled and
other-user access is removed.

### Banking Production Relevance

Financial services environments often
enforce restrictive umask values to
reduce accidental disclosure of:

- Audit records
- Application logs
- Transaction exports
- Configuration files

### Screenshot Reference

005_Umask_File_Directory_Defaults.png

## 🧾 ACL Capability Analysis

### ACL Tool Detection

Command:

command -v getfacl

Result:

No output

Command:

command -v setfacl

Result:

No output

### Engineering Observation

The ACL utilities are not currently
available on the host.

Extended ACL testing cannot be performed
without the required packages.

### Capability Gap

ACL functionality may still be supported
by the filesystem, but the management
utilities are not installed.

No package installation was performed
during Day003 because the learning
environment follows a no-modification
policy for the operating system.

### Banking Production Relevance

Many enterprise Linux environments use
ACLs to provide granular authorization
beyond standard owner/group/other
permissions.

ACLs are commonly used for:

- Shared application folders
- Log access delegation
- Audit-review access
- Operational support teams

### Screenshot Reference

Evidence File:

007_ACL_Capability_And_Effective_Access.png

---

**🏦 FinBank AI DevSecOps · Day 003 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

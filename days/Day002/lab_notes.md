[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 📝 Day 002 Lab Notes

## 🧭 Session Context
- Date:
- Branch:
- Repository root:
- Origin:

## 🧠 Concepts in My Own Words
- Kernel vs userspace:
- Shell role:
- Mount point:
- Inode:
- Absolute vs relative path:
- Symbolic vs hard link:

## 🧪 Evidence
| Check | Observation | Evidence file |
|---|---|---|
| PID 1 | | |
| default target | | |
| home filesystem | | |
| root capacity | | |
| root inode use | | |
| link behavior | | |

## 🖥️ Linux Architecture Analysis

### Kernel Information

Linux Kernel:
7.0.0-1012-aws

Platform:
x86_64 GNU/Linux

### Init Process Analysis

PID 1:
systemd

Command:
/sbin/init

Observation:
systemd is acting as the init system and is responsible for
starting services, managing dependencies, monitoring processes
and handling system targets.

### Boot Target Analysis

Current Default Target:
graphical.target

Observation:
The host boots into graphical.target.
This target is equivalent to a multi-user operational state
with graphical services enabled.

### Engineering Learning

Key Takeaway 1:
All user processes ultimately descend from PID 1.

Key Takeaway 2:
systemd manages service lifecycle, logging integration,
boot sequencing and dependency management.

Key Takeaway 3:
Understanding PID 1 behavior is essential when
troubleshooting service startup failures in Linux servers.

### Banking Production Relevance

In banking environments, application services,
payment processors, audit collectors and monitoring agents
are commonly managed through systemd.

If systemd fails to start a critical service,
transaction processing and regulatory logging can be affected.

### Screenshot Reference

Evidence File:
002_Linux_Architecture_And_PID1.png

## 🌳 Filesystem Hierarchy Analysis

### Key Directories Reviewed

/
Root filesystem

/etc
System configuration

/var
Application and system logs

/run
Runtime transient state

/tmp
Temporary storage

/proc
Process and kernel information

/sys
Kernel and device information

/dev
Device interfaces

/home
User workspace

/opt
Optional software

/usr
Installed applications and libraries

/boot
Kernel and bootloader files

### Engineering Observation

Linux separates configuration, runtime state,
logs, executables and user data into dedicated paths.

This separation improves maintainability,
security controls and operational troubleshooting.

### Banking Production Relevance

Correct filesystem placement reduces operational risk.

Examples:

Configuration:
stored under controlled paths

Logs:
stored under persistent monitored storage

Runtime state:
stored separately from business data

This separation helps support
auditability, security and disaster recovery.

## 💽 Capacity And Inode Analysis

### Filesystem Information

Filesystem:
/dev/root

Filesystem Type:
ext4

Capacity:
19G

Used:
8.1G

Available:
11G

Utilization:
45%

### Inode Information

Total Inodes:
2.3M

Used Inodes:
187K

Available Inodes:
2.1M

Inode Utilization:
8%

### Engineering Observation

The root filesystem has sufficient free capacity
and no inode pressure.

Filesystem utilization remains below
typical operational warning thresholds.

Both storage and inode resources are healthy.

### Banking Production Relevance

Application outages can occur even when
disk space is available if inode exhaustion occurs.

Monitoring systems should track both:

1. Disk Capacity
2. Inode Consumption

to prevent transaction processing failures,
logging failures and batch-processing interruptions.

### Screenshot Reference

Evidence File:
004_Disk_And_Inode_Utilization.png

## 🔗 Hard Link And Symbolic Link Analysis

### Hard Link Validation

Source File:
synthetic-transactions.csv

Hard Link:
transactions.hard

Observed Inode:
534948

Engineering Observation:
Both files share the same inode value.

This proves the hard link references the
same underlying filesystem object.

Modifications through either filename
affect the same data.

### Symbolic Link Validation

Symbolic Link:
transactions.symbolic

Relative Target:
../data/synthetic-transactions.csv

Resolved Target:
/home/ubuntu/Projects/FinBank-AI-DevSecOps/days/Day002/labs/day002/data/synthetic-transactions.csv

Engineering Observation:
A symbolic link stores a path reference rather than
pointing directly to the inode.

If the target is removed or renamed,
the symbolic link becomes broken.

### Banking Production Relevance

Hard links are uncommon in application
configuration management.

Symbolic links are frequently used for:

- Application deployments
- Log locations
- Version switching
- Configuration redirection

Incorrect symbolic-link management
can result in service outages,
missing configurations and failed deployments.

### Screenshot Reference

Evidence File:
005_Hardlink_And_Symlink_Validation.png

## 🚨 Failures
| Failure | Symptom | Root cause | Recovery | Prevention |
|---|---|---|---|---|
| broken symlink | | | | |
| missing path | | | | |
| permission denied | | | | |

## 🔗 Path Resolution Lesson

Initial testing was accidentally executed from:

days/Day002/

instead of the repository root.

This caused relative paths to resolve into:

days/Day002/labs/day002/

rather than:

labs/day002/

### Root Cause

Command execution context was incorrect.

Relative paths are always evaluated from the
current working directory.

### Resolution

Verified the repository root using:

pwd

Returned to:

/home/ubuntu/Projects/FinBank-AI-DevSecOps

Recreated the laboratory structure
from the proper location.

### Engineering Learning

Always verify:

pwd

before executing filesystem operations.

Path-related mistakes often create files
in unintended locations.

### Banking Production Relevance

Incorrect path assumptions can cause:

- Deployment failures
- Missing configuration files
- Application startup failures
- Log collection failures
- Backup exclusions

### Final Validation

Resolved Path:

/home/ubuntu/Projects/FinBank-AI-DevSecOps/labs/day002/data/synthetic-transactions.csv

Evidence File:

005_Hardlink_And_Symlink_Validation.png

## 🚨 Safe Failure Recovery Analysis

### Failure 1 - Missing File

Command:

stat labs/day002/does-not-exist

Observed Error:

No such file or directory

Root Cause:

Target file path was invalid.

Resolution:

Verified the expected file location
and corrected the path reference.

Engineering Learning:

Path validation should always be
performed before assuming a file exists.

### Failure 2 - Permission Denied

Command:

cat labs/day002/restricted/demo.txt

Observed Error:

Permission denied

File Permissions:

----------

Permission Mode:

000

Root Cause:

All permissions were removed.

Resolution:

chmod 600 labs/day002/restricted/demo.txt

Result:

File access restored successfully.

### Banking Production Relevance

Incorrect file permissions can prevent:

- Application startup
- Configuration loading
- Transaction processing
- Audit logging
- Service recovery

Missing files and permission problems
are among the most common Linux incidents
encountered in production environments.

### Screenshot Reference

Evidence File:

006_Safe_Failure_Recovery.png

## 🤖 AI Validation Record
- Sanitized prompt:
- Suggested command:
- Read-only or write classification:
- Validation performed:
- Correction made:

## 🏦 Banking Reflection
- Control supported:
- Availability risk prevented:
- Security learning:

---

**🏦 FinBank AI DevSecOps · Day 002 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

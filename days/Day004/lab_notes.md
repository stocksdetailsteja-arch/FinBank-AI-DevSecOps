[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 📝 Day 004 Engineering Lab Notes

## 🧭 Session Context
- Date:
- Branch:
- Repository root:
- Origin:

## 🖥️ Host Baseline
| Signal | Observation |
|---|---|
| kernel | |
| CPU count | |
| load averages | |
| memory available | |
| PID 1 | |
| system state | |

## 🔍 Process Analysis
| Field | Observation | Meaning |
|---|---|---|
| PID | | unique process ID |
| PPID | | parent process ID |
| USER | | effective owner |
| STAT | | process state and flags |
| NI | | nice value |
| %CPU | | sampled CPU use |
| %MEM | | percentage of physical memory |
| ELAPSED | | runtime duration |

## 📈 Synthetic Workload
- PID:
- Parent PID:
- Peak observed CPU:
- Process state:
- Load before:
- Load during:
- Stop signal:
- Exit validation:

## ⚙️ Service Inspection
- systemd overall state:
- failed units:
- SSH unit observation:
- service-log observation:

## 🚨 Safe Failure Analysis
| Failure | Exact symptom | Root cause | Safe conclusion |
|---|---|---|---|
| nonexistent PID | | | |
| nonexistent service | | | |

## 🤖 AI Validation Record
- Sanitized evidence:
- AI hypotheses:
- Unsafe suggestions rejected:
- Commands validated:
- Human conclusion:

## 🏦 Banking Reflection
- Customer-impact risk:
- Transaction-integrity control:
- Monitoring improvement:
- Graceful shutdown learning:

## 🖥️ Host Baseline

### Kernel

Linux 7.0.0-1012-aws x86_64 GNU/Linux

### CPU Count

2

### PID 1

systemd
    PID    PPID USER     STAT COMMAND         COMMAND
      1       0 root     Ss   systemd         /sbin/init

### Host State

running

### Engineering Observation

PID 1 is the root of process
supervision on modern Linux systems.

Services, dependencies and lifecycle
management are coordinated through
systemd.

### Banking Production Relevance

Payment services, ledger processes and
audit collectors depend on service
management and controlled restart
behavior to maintain availability.

### Screenshot Reference

002_PID1_Systemd_And_Host_State.png

## 🖥️ Host Baseline Analysis

### Operating System

Linux 7.0.0-1012-aws x86_64 GNU/Linux

### CPU Count

2 vCPUs

### PID 1

systemd

### Overall System State

running

### Failed Units

None detected

### Load Average

0.00
0.00
0.00

### Memory Status

Total Memory:

3.7 GB

Available Memory:

2.1 GB

Swap:

0 GB

### Engineering Observation

The host is operating normally.

PID 1 is managed by systemd.

No failed services were detected.

CPU utilization is extremely low,
providing a stable baseline for
performance exercises.

### Capacity Observation

The current load average is zero.

No indication exists of CPU, memory,
or service saturation.

### Banking Production Relevance

Resource baselines are critical before
incident response.

Without a baseline it is difficult to
determine whether abnormal activity
is actually occurring.

Monitoring CPU, memory and service
health supports payment-system
availability and operational stability.

### Screenshot References

002_PID1_Systemd_And_Host_State.png

003_CPU_Load_And_Memory_Baseline.png

## 🔍 Workload Lifecycle Observation

### Observation

The synthetic workload completed before
/proc inspection could be performed.

Attempting to inspect:

/proc/<PID>/status

returned:

No such file or directory

### Engineering Interpretation

The process had already exited and its
PID was removed from the process table.

The /proc filesystem only exposes
information for currently running
processes.

### Banking Production Relevance

Engineers frequently encounter
short-lived processes during:

- Batch processing
- ETL jobs
- Scheduled tasks
- Reconciliation workloads

Process evidence should be collected
while the workload is still active.

### Conclusion

Expected Linux behavior.

No issue detected.

## 📈 Synthetic Process Analysis

### Process Name

bash

### Process State

Running

### PID

11227

### Parent PID

1

### Virtual Memory

7960 KB

### Resident Memory

3712 KB

### Engineering Observation

The synthetic workload was executing
normally.

The process remained active long enough
for process-table and /proc inspection.

Linux exposes process metadata through
the /proc filesystem.

### Parent Relationship

The process was associated with PID 1.

This demonstrates how detached
background workloads can be supervised
through the operating-system process
hierarchy.

### Resource Observation

The workload consumed minimal memory
while generating CPU activity.

This provides a safe mechanism for
learning process-monitoring techniques.

### Banking Production Relevance

Monitoring active services requires
visibility into:

- Process state
- Parent processes
- Resource consumption
- Runtime duration

These signals help engineers diagnose
performance and availability issues.

### Screenshot Reference

006_CPU_Workload_And_Proc_Analysis.png

## 🚨 Controlled Failure Analysis

### Invalid PID Test

Command:

kill -TERM 999999

Result:

No such process

### Engineering Observation

Linux validates process existence before
delivering a signal.

Signals directed at nonexistent PIDs are
safely rejected.

### Nonexistent Service Test

Command:

systemctl status finbank-day004-nonexistent.service

Result:

Unit could not be found

### Engineering Observation

systemd correctly reported that the
requested service does not exist.

No system modification occurred.

### Production Relevance

Engineers frequently encounter:

- Incorrect service names
- Stale runbooks
- Invalid PIDs
- Retired services

Safe diagnostics prevent accidental
changes to production workloads.

### Screenshot Reference

008_Invalid_PID_And_Service_Failures.png

---

**🏦 FinBank AI DevSecOps · Day 004 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

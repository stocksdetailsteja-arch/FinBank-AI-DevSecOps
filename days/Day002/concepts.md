[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Linux Architecture & Filesystem Concepts

## 🗺️ Concept Map

| Area | Core idea | Production concern |
|---|---|---|
| Kernel | controls CPU, memory, devices, processes and networking | panic, resource exhaustion, driver fault |
| Shell | parses commands, expansions, redirections and pipelines | unsafe quoting or destructive expansion |
| Process | running program with identity and resources | leak, zombie, privilege, saturation |
| Filesystem | hierarchical namespace backed by mounts | full disk, inode exhaustion, read-only mount |
| Path | name resolved from root or current directory | traversal, wrong target, broken symlink |
| Inode | metadata and block references | files cannot be created despite free bytes |

## 🧩 Kernel Space vs Userspace
Applications operate in userspace and request protected operations through system calls. The kernel schedules processes, manages virtual memory, enforces access decisions and interacts with devices. A shell is not the kernel. The shell is a userspace command interpreter.

## 🐚 Shell Execution Flow
```mermaid
flowchart LR
  I[Typed Input] --> P[Parse]
  P --> E[Expansion]
  E --> R[Redirection]
  R --> X[Execute]
  X --> S[Exit Status]
```

Quoting controls expansion. Single quotes preserve literal text. Double quotes allow selected expansion. Unquoted variables can split into multiple arguments and expand wildcards.

## 🌳 Filesystem Hierarchy

| Path | Purpose | FinBank example |
|---|---|---|
| `/etc` | host configuration | service and security configuration |
| `/var` | variable persistent data | logs, queues and caches |
| `/run` | volatile runtime state | PID files and sockets |
| `/tmp` | temporary shared space | short-lived non-sensitive work only |
| `/proc` | process and kernel view | CPU, memory and process evidence |
| `/sys` | device and kernel object view | device and cgroup inspection |
| `/dev` | device nodes | disks and terminals |
| `/home` | user-owned workspaces | engineer repositories |
| `/opt` | optional application software | vendor packages |
| `/srv` | service data where adopted | service-owned content |
| `/usr` | installed programs and read-mostly data | binaries and libraries |
| `/boot` | bootloader and kernel assets | boot recovery evidence |

## 🧭 Path Resolution
An absolute path begins at `/`. A relative path begins at the current working directory. `.` means current directory and `..` means parent. `realpath` resolves a canonical path. A symbolic link stores another path while a hard link references the same inode.

## 💽 Capacity vs Inodes
`df -h` reports blocks. `df -i` reports inode consumption. A system can have free bytes but no free inodes, often following creation of many small files.

> [!TIP]
> During incidents, compare bytes, inodes, mounts, read-only state, open deleted files and the largest directories before deleting anything.

---

**🏦 FinBank AI DevSecOps · Day 002 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

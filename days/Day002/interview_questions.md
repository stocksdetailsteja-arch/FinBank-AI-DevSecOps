[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Senior MNC-Style Interview Questions & Answers

> [!NOTE]
> Original practice material aligned to enterprise interviews. It is not leaked or verbatim content from any employer.

## 1️⃣ Explain kernel space and userspace.
Userspace processes cannot directly perform protected hardware operations. System calls cross into the kernel, which enforces scheduling, memory, filesystem, device and network behavior.

## 2️⃣ Why can `df` show full usage while `du` shows less?
Possible causes include deleted-but-open files, mount boundaries, reserved blocks or inaccessible directories. Compare the same filesystem and inspect open deleted files.

## 3️⃣ Why can file creation fail when bytes are available?
The filesystem can exhaust inodes. Validate with `df -i`, find the small-file producer and correct retention or workload behavior.

## 4️⃣ Symbolic link vs hard link?
A symbolic link stores a path and can cross filesystems but can become broken. A hard link references the same inode, normally cannot cross filesystems and remains valid until all names are removed.

## 5️⃣ What is PID 1 responsible for?
On a systemd host, PID 1 starts and supervises units, manages dependencies and performs process reaping. Confirm the active implementation rather than assuming.

## 6️⃣ A service works manually but not under systemd. Why?
Compare user, working directory, environment, PATH, permissions, dependencies, sandboxing and startup ordering. Interactive-shell assumptions often do not exist in a service unit.

## 7️⃣ How do you investigate permission denied?
Identify the effective service identity, inspect every path component, file mode, owner, group, ACL, mount flags and mandatory access controls. Reproduce with the same user.

## 8️⃣ Where should banking application logs live?
Use an approved service logging design with controlled ownership, rotation, retention, central forwarding and tamper-aware audit requirements. Do not place enduring logs under volatile paths.

## 9️⃣ How do you safely handle disk pressure during payment processing?
Declare impact, protect write integrity, stop nonessential growth, identify the responsible filesystem, preserve audit evidence, scale or free approved capacity, validate reconciliation and implement preventive alerts.

## 🔟 What is wrong with `chmod 777` as a fix?
It removes meaningful access boundaries, can expose or permit modification of sensitive data and hides the identity or ownership defect. Apply the minimum required permission to the narrowest path.

## 🧩 Advanced Follow-Ups
- Mount point vs directory
- Bind mount vs symbolic link
- Exit status 126 vs 127
- Login shell vs non-login shell
- `/proc` and `/sys` as virtual filesystems
- Why `/run` is usually volatile
- Path traversal defenses
- Effect of sticky bit on shared directories

---

**🏦 FinBank AI DevSecOps · Day 002 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

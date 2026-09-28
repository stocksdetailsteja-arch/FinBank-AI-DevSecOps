[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Fresh-Clone Recovery Foundation Lab

> [!IMPORTANT]
> Day024 turns the repository into the recovery source of truth. A fresh Ubuntu machine can validate or install the approved toolchain, rebuild the Day023 FinBank application, start it on localhost, verify its APIs, stop it safely, and produce recovery evidence without relying on chat history or the original EC2 disk.

## Recovery Principle

GitHub stores everything required to recreate the application and development environment, but stores no secrets, private keys, real banking data, runtime database contents, or sensitive Terraform state.

## Phase 1: Repository Safety
Verify root, branch, origin, clean main baseline and ShopSphere isolation.

## Phase 2: Environment Inventory
Capture Ubuntu, kernel, architecture, CPU, memory, disk and installed tool versions.

## Phase 3: Tool Recovery
Validate Git, Java, AWS CLI, Docker and Terraform. Use `./finbank bootstrap --install` only when a prerequisite is missing.

## Phase 4: Application Recovery
Build, start, test, verify, stop and reset the Day023 runnable application through root commands.

## Phase 5: Backup Boundary
Generate a sanitized metadata snapshot and confirm that secrets, runtime logs, PIDs, build classes and Terraform state are excluded.

## Phase 6: Controlled Failure

```bash
set +e
./scripts/day024/fresh-clone-test.sh /missing/repository
code=$?
echo "controlled_exit_code=$code"
set -e
```

Expected exit code: `66`.

## Phase 7: Fresh-Clone Simulation
Create a local temporary clone from the current repository, run doctor, bootstrap, build, start, test, verify and stop inside the clone, then remove the clone.

## Phase 8: Release Gates
Review all evidence, capture ten screenshots, run `validate-day024.sh`, run Git whitespace checks, and ensure the runtime is stopped.

---

**🏦 FinBank AI DevSecOps · Day 024 of 120**
*Clone · Bootstrap · Build · Verify · Recover · Govern*

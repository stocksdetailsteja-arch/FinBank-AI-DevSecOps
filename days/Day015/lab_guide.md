[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Read-Only Enterprise Storage Lab

> [!IMPORTANT]
> No `fdisk`, `parted`, `mkfs`, `pvcreate`, `vgcreate`, `lvcreate`, mount, unmount, resize, or cloud-volume change is allowed.

## Phase 1: Branch and Safety
Create `day-015-enterprise-linux-storage-governance`, verify repository root/origin, and confirm ShopSphere is clean.

## Phase 2: Device and Mount Inventory
Capture `lsblk`, `findmnt`, and filesystem types. Identify root, boot, EFI, temporary, loop, and credential mounts.

## Phase 3: Capacity and Inodes
Review byte and inode usage. Record highest-risk mount, available headroom, and any unexpected read-only state.

## Phase 4: LVM Capability
Determine whether LVM tools and managed volumes exist. Absence is evidence, not failure.

## Phase 5: Generate Reports
Run all four report scripts. Review inventory, capacity risk, governance matrix, and architecture decision record.

## Phase 6: Controlled Failure
```bash
set +e
./scripts/day015/analyze-capacity-risk.sh --unsupported
echo "controlled_exit_code=$?"
set -e
```

## Phase 7: Final Validation
Run validator, normalize evidence, inspect status and execute `git diff --check`.

---

**🏦 FinBank AI DevSecOps · Day 015 of 120**
*Discover · Govern · Validate · Protect · Optimize · Improve*

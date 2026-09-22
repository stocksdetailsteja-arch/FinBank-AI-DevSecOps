[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Day 015 Command Center

## Inventory
```bash
lsblk -e7 -o NAME,TYPE,SIZE,FSTYPE,FSVER,LABEL,UUID,MOUNTPOINTS
findmnt -o TARGET,SOURCE,FSTYPE,OPTIONS
blkid 2>/dev/null || true
```
## Capacity and Inodes
```bash
df -hT
df -ihT
du -xhd1 "$HOME/Projects/FinBank-AI-DevSecOps" | sort -h
```
## LVM and Device Capabilities
```bash
command -v pvs || true
command -v vgs || true
command -v lvs || true
pvs 2>/dev/null || true
vgs 2>/dev/null || true
lvs 2>/dev/null || true
```
## Safe Reports
```bash
chmod +x scripts/day015/*.sh
./scripts/day015/collect-storage-inventory.sh
./scripts/day015/analyze-capacity-risk.sh
./scripts/day015/review-storage-governance.sh
./scripts/day015/generate-storage-decision-record.sh
```
## Quality
```bash
for script in scripts/day015/*.sh; do bash -n "$script"; done
./scripts/day015/validate-day015.sh
git diff --check
```

---

**🏦 FinBank AI DevSecOps · Day 015 of 120**
*Discover · Govern · Validate · Protect · Optimize · Improve*

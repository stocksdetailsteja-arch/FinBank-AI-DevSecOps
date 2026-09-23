[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Localhost Ansible Foundations & Governance Lab

> [!NOTE]
> Day022 is a safe Ansible-foundations and automation-governance lab. The package uses a localhost inventory, check mode, syntax validation, synthetic banking configuration, and repository-local evidence. It does not connect to remote hosts, retrieve secrets, restart services, or create AWS resources.

## Why This Matters

Configuration automation converts desired state into repeatable execution. Enterprise safety requires deterministic inventory, idempotent tasks, check mode, review, bounded privilege, canary rollout, recovery, business validation, and attributable evidence.

## Banking Lens

Automation must preserve payment availability, authentication, idempotency, queues, databases, ledgers, fraud controls, audit delivery, and recovery objectives.

## Phase 1: Safety
Verify FinBank root, origin, Day022 branch, and ShopSphere isolation.

## Phase 2: Content Review
Inspect `ansible.cfg`, localhost inventory, variables, template, and playbook. Confirm output is restricted to `/tmp/finbank-day022`.

## Phase 3: Structure Evidence
Run the structure inspector and review files, checksums, groups, tasks, tags, and declared paths.

## Phase 4: Static Validation
Run YAML validation. If Ansible is installed, also run inventory and playbook syntax checks. The script records whether optional tooling is available.

## Phase 5: Synthetic Automation Risk
Classify use of commands, privilege, scope, handler behavior, secrets, and rollback readiness with the synthetic CSV.

## Phase 6: Rollout Governance
Generate the canary, serial rollout, monitoring, rollback, idempotency, banking validation, and closure plan.

## Phase 7: Controlled Failure

```bash
set +e
./scripts/day022/analyze-automation-risk.sh /missing/automation-risk.csv
echo "controlled_exit_code=$?"
set -e
```

Expected exit code: `66`.

## Optional Localhost Execution

Only if `ansible-playbook` is installed:

```bash
ansible-playbook -i labs/day022/ansible/inventory.ini labs/day022/ansible/site.yml --check --diff
ansible-playbook -i labs/day022/ansible/inventory.ini labs/day022/ansible/site.yml --diff
ansible-playbook -i labs/day022/ansible/inventory.ini labs/day022/ansible/site.yml --diff
```

The second applied run should converge without unnecessary change.

## Phase 8: Final Validation
Generate evidence, capture screenshots, run the Day022 validator, and complete Git quality checks.

---

**🏦 FinBank AI DevSecOps · Day 022 of 120**
*Inventory · Validate · Automate · Converge · Verify · Govern*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Runnable FinBank Core Lab

> [!NOTE]
> Day023 is the first runnable FinBank application milestone. It delivers a dependency-free Java 17 HTTP application with customer, account, transaction, payment, health, and architecture endpoints. State is intentionally in-memory for this milestone and will evolve toward database-backed Spring Boot services across later days.

## Day120 Direction

Day023 establishes business boundaries and runnable behavior. Future milestones will incrementally add persistence, Spring Boot, security, events, containers, CI/CD, Kubernetes, AWS, observability, resilience, audit, fraud intelligence, and production governance until the complete platform is ready at Day120.


## Phase 1: Safety
Verify repository, branch, localhost bind address, Java 17, and absence of real data.

## Phase 2: Build
Compile the complete application and inspect build evidence.

## Phase 3: Run
Start the localhost server and verify health readiness.

## Phase 4: API Validation
Exercise customer, account, transaction, payment quote, and architecture endpoints.

## Phase 5: Banking Assertions
Confirm explicit currency, integer minor units, stable identifiers, deterministic quote output, and synthetic-only data.

## Phase 6: Controlled Failure

```bash
set +e
./scripts/day023/smoke-test.sh http://127.0.0.1:65534
echo "controlled_exit_code=$?"
set -e
```

Expected exit code: `69`.

## Phase 7: Final Validation
Run `validate-day023.sh`, capture ten screenshots, perform Git checks, and stop the process.

---

**🏦 FinBank AI DevSecOps · Day 023 of 120**
*Model · Build · Run · Test · Secure · Evolve*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Account Service Foundation Lab

> [!IMPORTANT]
> Day026 introduces `AccountService` as the account-domain service boundary. Collection and identifier lookup now flow through a dedicated service, while the HTTP adapter maps domain results to HTTP 200 and HTTP 404. Day024 recovery and Day025 customer behavior remain mandatory regression gates.

## Day120 Direction

The account domain will evolve toward validated Spring Boot APIs, PostgreSQL persistence, ledger-safe balance handling, authorization, audit events, concurrency controls, containers, observability and disaster recovery.

## Phase 1: Safety
Start from merged Day025 and create `day-026-account-service-foundation`.

## Phase 2: Service Layer
Create `AccountService`, inject `InMemoryRepository`, preserve collection behavior and add account lookup by ID.

## Phase 3: HTTP Route
Route `/accounts` through an account handler. Map known accounts to HTTP 200 and missing accounts to HTTP 404.

## Phase 4: Clean Build
Stop the runtime, remove generated build output and build nine Java sources.

## Phase 5: Functional Tests
Validate collection, ACC-2001, ACC-2002 and ACC-9999.

## Phase 6: Regression
Run Day023 smoke tests and Day025 customer tests.

## Phase 7: Controlled Failure

```bash
set +e
./scripts/day026/account-service-test.sh http://127.0.0.1:65534
code=$?
echo "controlled_exit_code=$code"
set -e
```

Expected exit code: `69`.

## Phase 8: Release
Generate evidence, run the Day026 validator, capture screenshots, stop the runtime and complete Git gates.

---

**🏦 FinBank AI DevSecOps · Day 026 of 120**
*Own · Validate · Serve · Test · Recover · Evolve*

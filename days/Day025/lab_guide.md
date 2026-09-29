[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Customer Service Foundation Lab

> [!IMPORTANT]
> Day025 introduces the first explicit application service layer. `CustomerService` now owns customer retrieval and lookup behavior, while the HTTP adapter handles routing and status codes. The package preserves the Day024 recovery interface so a fresh clone can rebuild and verify the new feature.

## Day120 Direction

The customer domain will evolve from synthetic read-only data into validated Spring Boot APIs, persistent PostgreSQL storage, authorization, audit events, integration contracts, containers, observability and banking-grade operational controls.

## Phase 1: Safety
Confirm Day024 is merged, create the Day025 branch and verify a clean working tree.

## Phase 2: Baseline
Inspect `Customer`, `InMemoryRepository`, `Json` and `FinBankApplication`.

## Phase 3: Service Layer
Add `CustomerService` with collection and identifier lookup methods using `Optional<Customer>`.

## Phase 4: HTTP Refactor
Route `/customers` through a dedicated handler and map customer absence to HTTP 404.

## Phase 5: Regression
Build, start and validate health, architecture, accounts, transactions, payment quote and customer collection.

## Phase 6: Customer Tests
Validate known customer `CUS-1001`, second customer `CUS-1002`, unknown customer `CUS-9999`, HTTP status and JSON markers.

## Phase 7: Controlled Failure

```bash
set +e
./scripts/day025/customer-service-test.sh http://127.0.0.1:65534
code=$?
echo "controlled_exit_code=$code"
set -e
```

Expected exit code is `69`.

## Phase 8: Recovery and Release
Run `./finbank verify`, generate evidence, stop the runtime, capture screenshots and run Git quality gates.

---

**🏦 FinBank AI DevSecOps · Day 025 of 120**
*Route · Validate · Serve · Test · Recover · Evolve*

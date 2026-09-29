[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Customer Service Tests, Negative Cases & Regression

> [!IMPORTANT]
> Day025 introduces the first explicit application service layer. `CustomerService` now owns customer retrieval and lookup behavior, while the HTTP adapter handles routing and status codes. The package preserves the Day024 recovery interface so a fresh clone can rebuild and verify the new feature.

## Day120 Direction

The customer domain will evolve from synthetic read-only data into validated Spring Boot APIs, persistent PostgreSQL storage, authorization, audit events, integration contracts, containers, observability and banking-grade operational controls.

## Positive Tests

- collection returns both synthetic customers
- `CUS-1001` returns Asha Rao
- `CUS-1002` returns Ravi Iyer
- successful response uses HTTP 200
- root Day023 smoke test still passes

## Negative Tests

- `CUS-9999` returns HTTP 404
- error JSON contains `Customer Not Found`
- unavailable server returns test exit code `69`
- malformed customer path returns HTTP 404

## Recovery Regression

Build, start, test, verify, stop and fresh-clone lifecycle must continue to work after the customer service change.

---

**🏦 FinBank AI DevSecOps · Day 025 of 120**
*Route · Validate · Serve · Test · Recover · Evolve*

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Customer Service Build, Run & Verification Commands

> [!IMPORTANT]
> Day025 introduces the first explicit application service layer. `CustomerService` now owns customer retrieval and lookup behavior, while the HTTP adapter handles routing and status codes. The package preserves the Day024 recovery interface so a fresh clone can rebuild and verify the new feature.

## Day120 Direction

The customer domain will evolve from synthetic read-only data into validated Spring Boot APIs, persistent PostgreSQL storage, authorization, audit events, integration contracts, containers, observability and banking-grade operational controls.

## Build

```bash
./finbank build
```

Expected evidence includes eight Java sources and eight class files with no compiler warnings.

## Start

```bash
./finbank start
```

The runtime remains bound to `127.0.0.1:8080`.

## List Customers

```bash
curl -fsS http://127.0.0.1:8080/customers
```

## Retrieve One Customer

```bash
curl -fsS http://127.0.0.1:8080/customers/CUS-1001
```

## Verify Not Found

```bash
curl -sS -o /tmp/day025-not-found.json -w '%{http_code}
' http://127.0.0.1:8080/customers/CUS-9999
cat /tmp/day025-not-found.json
```

Expected HTTP status is `404` and the response contains `Customer Not Found`.

## Feature Test

```bash
./scripts/day025/customer-service-test.sh
```

## Full Recovery Verification

```bash
./finbank test
./finbank verify
```

## Stop

```bash
./finbank stop
```

---

**🏦 FinBank AI DevSecOps · Day 025 of 120**
*Route · Validate · Serve · Test · Recover · Evolve*

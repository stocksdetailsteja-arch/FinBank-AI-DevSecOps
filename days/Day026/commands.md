[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Account Build, Runtime & API Commands

> [!IMPORTANT]
> Day026 introduces `AccountService` as the account-domain service boundary. Collection and identifier lookup now flow through a dedicated service, while the HTTP adapter maps domain results to HTTP 200 and HTTP 404. Day024 recovery and Day025 customer behavior remain mandatory regression gates.

## Day120 Direction

The account domain will evolve toward validated Spring Boot APIs, PostgreSQL persistence, ledger-safe balance handling, authorization, audit events, concurrency controls, containers, observability and disaster recovery.

## Build

```bash
./finbank build
```

Expected: nine source files, nine class files and no compiler warnings.

## Start and Status

```bash
./finbank start
./finbank status
```

## Collection

```bash
curl --max-time 5 http://127.0.0.1:8080/accounts
```

## Known Accounts

```bash
curl --max-time 5 http://127.0.0.1:8080/accounts/ACC-2001
curl --max-time 5 http://127.0.0.1:8080/accounts/ACC-2002
```

## Not Found Contract

```bash
curl --max-time 5 -sS -o /tmp/day026-not-found.json -w '%{http_code}
' http://127.0.0.1:8080/accounts/ACC-9999
cat /tmp/day026-not-found.json
```

## Feature, Regression and Recovery

```bash
./scripts/day026/account-service-test.sh
./finbank test
./finbank verify
./finbank stop
```

---

**🏦 FinBank AI DevSecOps · Day 026 of 120**
*Own · Validate · Serve · Test · Recover · Evolve*

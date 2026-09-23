[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Explained FinBank Build & Runtime Command Center

> [!NOTE]
> Day023 is the first runnable FinBank application milestone. It delivers a dependency-free Java 17 HTTP application with customer, account, transaction, payment, health, and architecture endpoints. State is intentionally in-memory for this milestone and will evolve toward database-backed Spring Boot services across later days.

## Day120 Direction

Day023 establishes business boundaries and runnable behavior. Future milestones will incrementally add persistence, Spring Boot, security, events, containers, CI/CD, Kubernetes, AWS, observability, resilience, audit, fraud intelligence, and production governance until the complete platform is ready at Day120.


## Compile

```bash
./scripts/day023/build-finbank.sh
```

Compiles Java 17 source with `javac`, writes classes under `finbank-app/build/classes`, records compiler evidence, and fails on warnings promoted by the package script.

## Start

```bash
./scripts/day023/start-finbank.sh
```

Starts the application on `127.0.0.1:8080`, writes a PID under `/tmp/finbank-day023`, waits for health readiness, and does not expose the service externally.

## Smoke Test

```bash
./scripts/day023/smoke-test.sh
```

Calls all endpoints, checks HTTP success, validates expected JSON markers, and writes evidence under `evidence/day023`.

## Stop

```bash
./scripts/day023/stop-finbank.sh
```

Stops only the PID created by the Day023 start script and removes the PID file.

## Direct Checks

```bash
curl -fsS http://127.0.0.1:8080/health
curl -fsS http://127.0.0.1:8080/customers
curl -fsS http://127.0.0.1:8080/accounts
curl -fsS http://127.0.0.1:8080/transactions
curl -fsS 'http://127.0.0.1:8080/payments/quote?amountMinor=10000'
```

> [!WARNING]
> Do not bind this training application to a public interface. Authentication, authorization, TLS, persistent storage, and rate limiting are later milestones.

---

**🏦 FinBank AI DevSecOps · Day 023 of 120**
*Model · Build · Run · Test · Secure · Evolve*

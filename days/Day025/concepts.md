[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [⌨️ Commands](commands.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧠 Customer Service Layer & API Boundary Concepts

> [!IMPORTANT]
> Day025 introduces the first explicit application service layer. `CustomerService` now owns customer retrieval and lookup behavior, while the HTTP adapter handles routing and status codes. The package preserves the Day024 recovery interface so a fresh clone can rebuild and verify the new feature.

## Day120 Direction

The customer domain will evolve from synthetic read-only data into validated Spring Boot APIs, persistent PostgreSQL storage, authorization, audit events, integration contracts, containers, observability and banking-grade operational controls.

## Why a Service Layer

The service layer centralizes business-oriented behavior between transport and persistence. HTTP code should interpret paths, methods and response status. Repository code should store or retrieve data. `CustomerService` should express customer use cases without knowing HTTP details.

## Responsibilities

| Layer | Responsibility | Must Not Own |
|---|---|---|
| HTTP adapter | route, status, content type | repository traversal rules |
| customer service | list and locate customers | HTTP exchange mechanics |
| repository | provide customer collection | response formatting |
| customer model | immutable customer state | persistence or routing |
| JSON adapter | deterministic serialization | customer lookup decisions |

## Lookup Semantics

`getCustomerById` returns `Optional<Customer>`. The absence of a customer is expected domain behavior, not an exceptional server failure. The HTTP adapter maps empty lookup to 404.

## Customer Identifier

The Day025 identifier is a stable synthetic value such as `CUS-1001`. Later persistence milestones will define database uniqueness, creation policy, external exposure, validation and audit.

## Error Contract

```json
{"error":"Customer Not Found"}
```

The contract is intentionally small. Later days will add structured error codes, correlation IDs, timestamps, path, validation details and OpenAPI documentation.

## Banking Relevance

Customer lookup is foundational for account ownership, payment authorization, fraud decisions, servicing and audit. A customer record must not expose sensitive attributes without authorization and field-level policy.

---

**🏦 FinBank AI DevSecOps · Day 025 of 120**
*Route · Validate · Serve · Test · Recover · Evolve*

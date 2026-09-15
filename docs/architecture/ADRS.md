# Architecture Decision Records

Use one record per consequential decision.

## ADR template
- **Title and status:** proposed, accepted, superseded
- **Context:** problem, constraints, banking risk and assumptions
- **Options:** at least two viable approaches
- **Decision:** selected option and why
- **Consequences:** benefits, costs, operational burden and reversibility
- **Security/AI impact:** data, permissions, audit, human approval
- **Evidence:** benchmark, test, diagram or experiment

## Initial decisions
1. Kubernetes on EKS for the flagship learning deployment, while local containers reduce cost during development.
2. Aurora PostgreSQL-compatible storage for transactional learning data.
3. Transactional outbox for reliable event publication.
4. Read-only RAG assistant before any agentic action capability.
5. Terraform modules with remote state and mandatory reviewed plans.

# 🏗️ Day018 Security Architecture Decision

## Decision
Use named identities, managed authentication, MFA, controlled access paths, hardened SSH, command-scoped sudo, file and mandatory-access controls, centralized audit evidence, and periodic recertification.

## Rejected Alternative
Shared root access and permanent unrestricted sudo were rejected because they weaken attribution, lifecycle control, monitoring, segregation of duties, and incident response.

## Validation
Validate authorized and unauthorized access, service health, transaction integrity, audit delivery, temporary-privilege removal, and recovery access.

## Rollback
Every security change requires known-good configuration, syntax validation, canary scope, active recovery path, and explicit abort criteria.

## Banking Control
Security PASS requires confidentiality, integrity, availability, segregation of duties, non-repudiation, reconciliation, and audit continuity.

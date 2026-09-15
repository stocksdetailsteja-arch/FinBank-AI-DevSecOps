# FinBank AI DevSecOps Academy

> A 120-day, portfolio-first journey covering AWS, Linux, Git, CI/CD, Docker, Kubernetes, Terraform, observability, DevSecOps, generative AI, AIOps, and banking-grade delivery.

## Why this repository exists
This repository is designed for Akkana Tejaswar Sai's transition toward AWS DevOps, Cloud, Platform Engineering, and AI-assisted DevOps roles. It combines structured study, verifiable labs, production troubleshooting, interview preparation, and a flagship banking project.

## Flagship outcome
Build and operate **FinBank AI**, a simulated digital banking platform with customer, account, payment, ledger, notification, fraud-risk, audit, and AI operations capabilities. It is an educational system. It must never process real customer data, real credentials, or real money.

## Learning path
| Phase | Days | Outcome |
|---|---:|---|
| Foundation | 1-15 | Linux, networking, Bash, Git and repository discipline |
| AWS Core | 16-35 | IAM, VPC, EC2, S3, RDS, scaling, messaging and operations |
| CI/CD and Containers | 36-55 | Jenkins, GitHub Actions, Docker, supply-chain controls |
| Kubernetes and EKS | 56-75 | Kubernetes operations, Helm, EKS, resilience and GitOps |
| Terraform and DevSecOps | 76-90 | Reusable IaC, policy, secrets, scanning and governance |
| Observability and SRE | 91-100 | Metrics, logs, traces, SLOs, incidents and DR |
| AI for DevOps and Banking | 101-110 | Prompting, Bedrock, RAG, AIOps, guardrails and evaluation |
| Flagship implementation | 111-120 | Build, secure, deploy, observe, test, document and present |

## Repository map
- `docs/roadmap/`: master schedule, milestones and assessments
- `days/`: one executable study sheet per day
- `docs/architecture/`: HLD, LLD, threat model, data flow and ADRs
- `docs/concepts/`: concise concept guides
- `docs/labs/`: lab runbooks and evidence rules
- `docs/interview/`: 5+ year scenario questions and answer frameworks
- `docs/troubleshooting/`: production-style diagnosis playbooks
- `projects/`: five portfolio projects
- `infra/`, `platform/`, `ci/`: implementation landing zones
- `screenshots/`: milestone evidence, with exact filenames listed in the checklist

## Daily operating rhythm
1. Learn the concepts and explain them in your own words.
2. Complete the lab without copying secrets into the repository.
3. Validate with tests, linters, plans, scans, health checks, logs and metrics.
4. Capture only the requested evidence screenshot.
5. Update the day's lab notes and troubleshooting record.
6. Commit through a feature branch and pull request.

## Definition of done
A day is complete only when the explanation, lab, validation output, screenshot, cost shutdown check, notes, and Git commit are present.

## Important safety controls
- Use synthetic customer and transaction data only.
- Never commit keys, passwords, tokens, account IDs, personal data, or model prompts containing confidential information.
- AI-generated code is untrusted until reviewed, tested, scanned and approved.
- Production-impacting or privileged actions require human approval.
- Destroy temporary AWS resources each day unless the next lab explicitly requires them.

## Start here
1. Read `docs/roadmap/120_DAY_PLAN.md`.
2. Read `docs/architecture/FLAGSHIP_ARCHITECTURE.md`.
3. Follow `docs/github/REPOSITORY_SETUP.md`.
4. Begin with `days/Day001.md`.

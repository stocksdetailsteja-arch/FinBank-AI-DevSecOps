# Detailed 120-Day Study Plan

**Recommended cadence:** 3 focused hours per day. Use 60 minutes for concepts, 90 minutes for lab work, and 30 minutes for review, interview practice, evidence and shutdown.

Each day has a separate executable sheet under `days/`.

## Phase: Foundation (Days 1-15)

| Day | Focus | Required evidence |
|---:|---|---|
| 1 | [Learning system, baseline assessment and AWS cost guardrails](../../days/Day001.md) | `001_Learning_system.png` |
| 2 | [Linux architecture, shell and filesystem hierarchy](../../days/Day002.md) | `002_Linux_architecture.png` |
| 3 | [Files, links, search and text processing](../../days/Day003.md) | `003_Files.png` |
| 4 | [Users, groups, permissions, sudo and least privilege](../../days/Day004.md) | `004_Users.png` |
| 5 | [Processes, signals, jobs, memory and CPU diagnosis](../../days/Day005.md) | `005_Processes.png` |
| 6 | [Packages, repositories, systemd and service recovery](../../days/Day006.md) | `006_Packages.png` |
| 7 | [Networking fundamentals, DNS, ports, routes and TLS](../../days/Day007.md) | `007_Networking_fundamentals.png` |
| 8 | [SSH hardening, SCP, rsync and secure remote access](../../days/Day008.md) | `008_SSH_hardening.png` |
| 9 | [Bash variables, conditions, loops and functions](../../days/Day009.md) | `009_Bash_variables.png` |
| 10 | [Bash error handling, traps, logging and idempotency](../../days/Day010.md) | `010_Bash_error_handling.png` |
| 11 | [Log parsing with grep, awk, sed, jq and regular expressions](../../days/Day011.md) | `011_Log_parsing_with_grep.png` |
| 12 | [Health-check and backup automation project](../../days/Day012.md) | `012_Health-check_and_backup_automation_project.png` |
| 13 | [Git objects, working tree, index, commits and history](../../days/Day013.md) | `013_Git_objects.png` |
| 14 | [Branches, merges, rebase, conflicts and recovery](../../days/Day014.md) | `014_Branches.png` |
| 15 | [GitHub pull requests, reviews, releases and foundation assessment](../../days/Day015.md) | `015_GitHub_pull_requests.png` |

## Phase: AWS Core (Days 16-35)

| Day | Focus | Required evidence |
|---:|---|---|
| 16 | [AWS global infrastructure, shared responsibility and account baseline](../../days/Day016.md) | `016_AWS_global_infrastructure.png` |
| 17 | [IAM users, roles, policies, STS and access analysis](../../days/Day017.md) | `017_IAM_users.png` |
| 18 | [AWS CLI profiles, SSO concepts, CloudShell and credential safety](../../days/Day018.md) | `018_AWS_CLI_profiles.png` |
| 19 | [VPC CIDR design, subnets, route tables, IGW and NAT](../../days/Day019.md) | `019_VPC_CIDR_design.png` |
| 20 | [Security groups, NACLs, VPC endpoints and flow logs](../../days/Day020.md) | `020_Security_groups.png` |
| 21 | [EC2 lifecycle, AMIs, user data, EBS and Systems Manager](../../days/Day021.md) | `021_EC2_lifecycle.png` |
| 22 | [Elastic Load Balancing, health checks and Auto Scaling](../../days/Day022.md) | `022_Elastic_Load_Balancing.png` |
| 23 | [S3 security, versioning, lifecycle, replication and static assets](../../days/Day023.md) | `023_S3_security.png` |
| 24 | [RDS and Aurora concepts, backups, failover and connection control](../../days/Day024.md) | `024_RDS_and_Aurora_concepts.png` |
| 25 | [Route 53, DNS routing and ACM-managed TLS](../../days/Day025.md) | `025_Route_53.png` |
| 26 | [CloudWatch metrics, logs, alarms, dashboards and SNS](../../days/Day026.md) | `026_CloudWatch_metrics.png` |
| 27 | [CloudTrail, Config, audit evidence and detective controls](../../days/Day027.md) | `027_CloudTrail.png` |
| 28 | [SQS, SNS, EventBridge and event-driven reliability](../../days/Day028.md) | `028_SQS.png` |
| 29 | [Lambda design, permissions, retries, DLQs and observability](../../days/Day029.md) | `029_Lambda_design.png` |
| 30 | [ECR, image lifecycle and vulnerability awareness](../../days/Day030.md) | `030_ECR.png` |
| 31 | [KMS, Secrets Manager, Parameter Store and envelope encryption](../../days/Day031.md) | `031_KMS.png` |
| 32 | [AWS Backup, recovery objectives and restore testing](../../days/Day032.md) | `032_AWS_Backup.png` |
| 33 | [Cost Explorer, Budgets, tagging and rightsizing workflow](../../days/Day033.md) | `033_Cost_Explorer.png` |
| 34 | [AWS Well-Architected review for the banking workload](../../days/Day034.md) | `034_AWS_Well-Architected_review_for_the_banking_w.png` |
| 35 | [AWS core project: highly available service and phase assessment](../../days/Day035.md) | `035_AWS_core_project:_highly_available_service_an.png` |

## Phase: CI/CD and Containers (Days 36-55)

| Day | Focus | Required evidence |
|---:|---|---|
| 36 | [CI/CD principles, value-stream mapping and deployment safety](../../days/Day036.md) | `036_CI-CD_principles.png` |
| 37 | [Jenkins architecture, controller-agent model and credentials](../../days/Day037.md) | `037_Jenkins_architecture.png` |
| 38 | [Declarative Jenkinsfile, stages, post actions and artifacts](../../days/Day038.md) | `038_Declarative_Jenkinsfile.png` |
| 39 | [Maven build, unit tests, quality gates and dependency caching](../../days/Day039.md) | `039_Maven_build.png` |
| 40 | [GitHub Actions workflow syntax, runners, environments and OIDC](../../days/Day040.md) | `040_GitHub_Actions_workflow_syntax.png` |
| 41 | [Pipeline secrets, least privilege and short-lived credentials](../../days/Day041.md) | `041_Pipeline_secrets.png` |
| 42 | [Docker architecture, images, layers, registries and containers](../../days/Day042.md) | `042_Docker_architecture.png` |
| 43 | [Production Dockerfile and multi-stage build](../../days/Day043.md) | `043_Production_Dockerfile_and_multi-stage_build.png` |
| 44 | [Docker networking, volumes, Compose and local integration](../../days/Day044.md) | `044_Docker_networking.png` |
| 45 | [Container health checks, resource limits and graceful shutdown](../../days/Day045.md) | `045_Container_health_checks.png` |
| 46 | [Image scanning, SBOM, signing concepts and policy gates](../../days/Day046.md) | `046_Image_scanning.png` |
| 47 | [SonarQube, SAST, dependency and secret scanning](../../days/Day047.md) | `047_SonarQube.png` |
| 48 | [Deployment strategies: rolling, blue-green, canary and rollback](../../days/Day048.md) | `048_Deployment_strategies:_rolling.png` |
| 49 | [Database migration safety with versioned migrations](../../days/Day049.md) | `049_Database_migration_safety_with_versioned_migr.png` |
| 50 | [CI/CD failure injection and troubleshooting lab](../../days/Day050.md) | `050_CI-CD_failure_injection_and_troubleshooting_l.png` |
| 51 | [Pipeline shared libraries and reusable workflow design](../../days/Day051.md) | `051_Pipeline_shared_libraries_and_reusable_workfl.png` |
| 52 | [Artifact promotion across dev, test and production](../../days/Day052.md) | `052_Artifact_promotion_across_dev.png` |
| 53 | [Release governance, approvals, audit trail and change evidence](../../days/Day053.md) | `053_Release_governance.png` |
| 54 | [Containerized banking API mini-project](../../days/Day054.md) | `054_Containerized_banking_API_mini-project.png` |
| 55 | [CI/CD and containers phase assessment](../../days/Day055.md) | `055_CI-CD_and_containers_phase_assessment.png` |

## Phase: Kubernetes and EKS (Days 56-75)

| Day | Focus | Required evidence |
|---:|---|---|
| 56 | [Kubernetes architecture, API objects and kubectl workflow](../../days/Day056.md) | `056_Kubernetes_architecture.png` |
| 57 | [Pods, labels, annotations, probes and resource requests](../../days/Day057.md) | `057_Pods.png` |
| 58 | [Deployments, ReplicaSets, rollout, rollback and disruption](../../days/Day058.md) | `058_Deployments.png` |
| 59 | [Services, DNS, ingress and traffic routing](../../days/Day059.md) | `059_Services.png` |
| 60 | [ConfigMaps, Secrets and external secret patterns](../../days/Day060.md) | `060_ConfigMaps.png` |
| 61 | [PersistentVolumes, StorageClasses and StatefulSets](../../days/Day061.md) | `061_PersistentVolumes.png` |
| 62 | [Namespaces, quotas, LimitRanges and multi-tenancy](../../days/Day062.md) | `062_Namespaces.png` |
| 63 | [RBAC, service accounts and workload identity](../../days/Day063.md) | `063_RBAC.png` |
| 64 | [NetworkPolicy and east-west segmentation](../../days/Day064.md) | `064_NetworkPolicy_and_east-west_segmentation.png` |
| 65 | [Helm charts, values, templates, hooks and release lifecycle](../../days/Day065.md) | `065_Helm_charts.png` |
| 66 | [HPA, Cluster Autoscaler and capacity planning](../../days/Day066.md) | `066_HPA.png` |
| 67 | [Affinity, taints, topology spread and high availability](../../days/Day067.md) | `067_Affinity.png` |
| 68 | [Jobs, CronJobs and operational workloads](../../days/Day068.md) | `068_Jobs.png` |
| 69 | [Kubernetes logging, metrics, events and troubleshooting](../../days/Day069.md) | `069_Kubernetes_logging.png` |
| 70 | [EKS architecture, managed node groups and add-ons](../../days/Day070.md) | `070_EKS_architecture.png` |
| 71 | [EKS access, IAM roles for service accounts and pod identity](../../days/Day071.md) | `071_EKS_access.png` |
| 72 | [ECR-to-EKS deployment pipeline](../../days/Day072.md) | `072_ECR-to-EKS_deployment_pipeline.png` |
| 73 | [GitOps concepts with Argo CD and drift reconciliation](../../days/Day073.md) | `073_GitOps_concepts_with_Argo_CD_and_drift_reconc.png` |
| 74 | [Chaos test, pod failure, node pressure and recovery](../../days/Day074.md) | `074_Chaos_test.png` |
| 75 | [Kubernetes and EKS phase assessment](../../days/Day075.md) | `075_Kubernetes_and_EKS_phase_assessment.png` |

## Phase: Terraform and DevSecOps (Days 76-90)

| Day | Focus | Required evidence |
|---:|---|---|
| 76 | [Terraform workflow, providers, resources and dependency graph](../../days/Day076.md) | `076_Terraform_workflow.png` |
| 77 | [Variables, locals, outputs, expressions and validation](../../days/Day077.md) | `077_Variables.png` |
| 78 | [State, locking, remote backend and recovery](../../days/Day078.md) | `078_State.png` |
| 79 | [Modules, versioning, composition and contract design](../../days/Day079.md) | `079_Modules.png` |
| 80 | [Multi-environment structure without copy-paste](../../days/Day080.md) | `080_Multi-environment_structure_without_copy-past.png` |
| 81 | [Import, moved blocks, drift and lifecycle controls](../../days/Day081.md) | `081_Import.png` |
| 82 | [Terraform testing, fmt, validate, plan and policy checks](../../days/Day082.md) | `082_Terraform_testing.png` |
| 83 | [VPC, subnet, route and endpoint module](../../days/Day083.md) | `083_VPC.png` |
| 84 | [EKS and IAM module design](../../days/Day084.md) | `084_EKS_and_IAM_module_design.png` |
| 85 | [RDS, KMS, Secrets and backup module](../../days/Day085.md) | `085_RDS.png` |
| 86 | [DevSecOps threat modeling and attack-surface review](../../days/Day086.md) | `086_DevSecOps_threat_modeling_and_attack-surface_.png` |
| 87 | [Policy as code, admission controls and guardrails](../../days/Day087.md) | `087_Policy_as_code.png` |
| 88 | [Supply-chain security, SBOM, provenance and signed releases](../../days/Day088.md) | `088_Supply-chain_security.png` |
| 89 | [Banking data classification, retention and synthetic data](../../days/Day089.md) | `089_Banking_data_classification.png` |
| 90 | [Terraform and DevSecOps phase assessment](../../days/Day090.md) | `090_Terraform_and_DevSecOps_phase_assessment.png` |

## Phase: Observability and SRE (Days 91-100)

| Day | Focus | Required evidence |
|---:|---|---|
| 91 | [Observability pillars, telemetry design and correlation IDs](../../days/Day091.md) | `091_Observability_pillars.png` |
| 92 | [Prometheus metrics, exporters, recording and alerting rules](../../days/Day092.md) | `092_Prometheus_metrics.png` |
| 93 | [Grafana dashboards for banking golden signals](../../days/Day093.md) | `093_Grafana_dashboards_for_banking_golden_signals.png` |
| 94 | [Centralized logging, structured logs and search workflow](../../days/Day094.md) | `094_Centralized_logging.png` |
| 95 | [Distributed tracing with OpenTelemetry concepts](../../days/Day095.md) | `095_Distributed_tracing_with_OpenTelemetry_concep.png` |
| 96 | [SLIs, SLOs, error budgets and alert quality](../../days/Day096.md) | `096_SLIs.png` |
| 97 | [Incident command, triage, communication and timelines](../../days/Day097.md) | `097_Incident_command.png` |
| 98 | [Root-cause analysis, five whys and corrective actions](../../days/Day098.md) | `098_Root-cause_analysis.png` |
| 99 | [Backup, restore, multi-AZ resilience and DR exercise](../../days/Day099.md) | `099_Backup.png` |
| 100 | [SRE game day and observability assessment](../../days/Day100.md) | `100_SRE_game_day_and_observability_assessment.png` |

## Phase: AI for DevOps and Banking (Days 101-110)

| Day | Focus | Required evidence |
|---:|---|---|
| 101 | [AI-assisted DevOps workflow and responsible-use boundaries](../../days/Day101.md) | `101_AI-assisted_DevOps_workflow_and_responsible-u.png` |
| 102 | [Prompt engineering for Bash, YAML, Terraform and diagnosis](../../days/Day102.md) | `102_Prompt_engineering_for_Bash.png` |
| 103 | [Amazon Bedrock foundations, model access and secure invocation](../../days/Day103.md) | `103_Amazon_Bedrock_foundations.png` |
| 104 | [Embeddings, vector search and RAG for runbooks](../../days/Day104.md) | `104_Embeddings.png` |
| 105 | [AI operations assistant architecture and retrieval evaluation](../../days/Day105.md) | `105_AI_operations_assistant_architecture_and_retr.png` |
| 106 | [AIOps log summarization with evidence and confidence](../../days/Day106.md) | `106_AIOps_log_summarization_with_evidence_and_con.png` |
| 107 | [Agentic DevOps, tool permissions, approval gates and kill switch](../../days/Day107.md) | `107_Agentic_DevOps.png` |
| 108 | [AI security: prompt injection, data leakage and output validation](../../days/Day108.md) | `108_AI_security:_prompt_injection.png` |
| 109 | [Banking fraud-risk concepts using synthetic data and human review](../../days/Day109.md) | `109_Banking_fraud-risk_concepts_using_synthetic_d.png` |
| 110 | [AI governance, evaluation, red teaming and phase assessment](../../days/Day110.md) | `110_AI_governance.png` |

## Phase: Flagship Implementation (Days 111-120)

| Day | Focus | Required evidence |
|---:|---|---|
| 111 | [Flagship scope, backlog, bounded contexts and ADRs](../../days/Day111.md) | `111_Flagship_scope.png` |
| 112 | [Create microservice skeletons and local development stack](../../days/Day112.md) | `112_Create_microservice_skeletons_and_local_devel.png` |
| 113 | [Implement identity, customer and account service boundaries](../../days/Day113.md) | `113_Implement_identity.png` |
| 114 | [Implement payment orchestration and double-entry ledger rules](../../days/Day114.md) | `114_Implement_payment_orchestration_and_double-en.png` |
| 115 | [Add event messaging, idempotency, outbox and notifications](../../days/Day115.md) | `115_Add_event_messaging.png` |
| 116 | [Build Terraform platform and secure AWS foundations](../../days/Day116.md) | `116_Build_Terraform_platform_and_secure_AWS_found.png` |
| 117 | [Package services, deploy to EKS and configure progressive delivery](../../days/Day117.md) | `117_Package_services.png` |
| 118 | [Add observability, SLOs, alerts, runbooks and dashboards](../../days/Day118.md) | `118_Add_observability.png` |
| 119 | [Add AI operations RAG assistant with read-only first release](../../days/Day119.md) | `119_Add_AI_operations_RAG_assistant_with_read-onl.png` |
| 120 | [Security test, failure drill, cost shutdown, portfolio demo and final review](../../days/Day120.md) | `120_Security_test.png` |

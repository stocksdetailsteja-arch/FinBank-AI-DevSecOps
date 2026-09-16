# Day 001 Senior MNC-Style Interview Questions and Answers

> Original practice material aligned to enterprise interview patterns. It is not presented as leaked or verbatim content from any company.

## 1. How do you prevent pushing code to the wrong repository?
**Answer:** I verify the working directory, repository root, branch, remote and staged diff before every commit. I use separate top-level directories and avoid nested repositories. In CI, I restrict production environments by repository and branch identity. If I discover a mistake before push, I stop and unstage safely. If it has already been pushed, I assess exposure, revoke secrets first if present, then correct history according to repository policy.

## 2. Why are empty directories missing after `git add .`?
Git stores file content and tree relationships, not empty directories. A directory appears only after it contains a tracked file. I add a meaningful README or an intentional `.gitkeep`, not junk content.

## 3. An EC2 learning host runs two projects. Is that acceptable?
It can be acceptable for a controlled learning environment if repositories, ports, processes, secrets, resource names and deployment targets are isolated. I would not claim host separation where none exists. For stronger isolation I use containers, separate users or separate environments in later stages.

## 4. What is least privilege?
Least privilege grants the minimum actions on the minimum resources for the minimum duration and appropriate conditions. It also includes an operational process for review, revocation and evidence.

## 5. A teammate asks you to paste AWS credentials into an AI assistant for debugging. What do you do?
I refuse to share credentials. I redact the configuration, describe only non-sensitive symptoms, use approved tools and rotate credentials immediately if exposure may already have occurred.

## 6. Does an AWS Budget stop resources automatically?
A budget is primarily a monitoring and notification control unless a separately configured action is used. I never treat an alert as a hard spending boundary. I combine budgets with tagging, quotas where appropriate, automated cleanup and daily review.

## 7. What do you capture in a production baseline?
Identity context, OS and kernel, capacity, filesystem and inode usage, network routes and listeners, critical services, tool versions, repository identity and observability health. I exclude secrets and unnecessary personal or account data.

## 8. Why is `git diff --cached` important?
It displays the exact staged content intended for the next commit. `git diff` alone shows unstaged changes and can create false confidence.

## 9. How would you explain DevOps to a banking stakeholder?
DevOps is a controlled delivery and operations model that shortens feedback while preserving traceability, security, automated validation, approval boundaries, observability and recovery. Faster delivery is valuable only when transaction integrity and customer impact remain controlled.

## 10. What is your approach when a command fails?
I preserve the exact error, confirm context, identify the smallest set of hypotheses, gather discriminating evidence, apply the least risky change, validate recovery and document prevention. I do not repeat commands blindly.

## Follow-up drills
- Difference between working tree, index and commit
- Difference between an IAM user and an assumed role
- Disk capacity versus inode exhaustion
- Detection control versus preventive control
- Why a successful command is not sufficient audit evidence

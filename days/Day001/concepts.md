# Day 001 Concepts

## 1. DevOps as an operating model
DevOps combines product ownership, software delivery and operations feedback. Tools support the model, but the core behavior is small controlled changes, automation, observable outcomes, shared responsibility and rapid recovery.

## 2. Repository isolation
A Git repository is identified by its `.git` directory. Two folders can share one EC2 host while retaining fully separate histories and remotes. Safety depends on checking the current directory, repository root, branch, remote and staged diff before every commit and push.

### Five-point repository check
1. `pwd` confirms the intended workspace.
2. `git rev-parse --show-toplevel` confirms the repository root.
3. `git branch --show-current` confirms the branch.
4. `git remote -v` confirms the destination.
5. `git diff --cached` confirms exactly what will be committed.

## 3. Linux orientation
Linux exposes resources through files, processes and interfaces. Important baseline areas are:
- Identity: user, groups and privilege boundary
- Host: kernel, architecture, CPU and memory
- Storage: filesystem capacity and inode availability
- Network: interfaces, routes, DNS and listening ports
- Processes: running services, ownership and resource use
- Packages: installed tool versions and update state

## 4. Least privilege
Least privilege grants only the actions required for the current task and limits scope, duration and environment. Prefer temporary role credentials over permanent keys. Never use the root user for routine AWS work.

## 5. AWS shared responsibility
AWS secures the underlying cloud infrastructure. The customer remains responsible for configuration, identity, data, workloads and many service-specific controls. The exact boundary varies by service model.

## 6. Cost governance
Cost control begins before provisioning:
- Define purpose, owner, environment and expiry tags.
- Know which services continue charging while idle.
- Use budgets and alerts as detection, not as spending caps.
- Prefer local tools for repeated practice.
- Destroy temporary infrastructure after validation.
- Record every intentionally retained resource.

## 7. AI-assisted engineering
AI output is an untrusted draft. Safe usage requires sanitized context, explicit constraints, independent validation, a reviewed diff, executable tests and a human approval boundary. Never place credentials, customer data or confidential enterprise information in prompts.

## 8. Banking relevance
Repository controls support change traceability. Least privilege reduces unauthorized access. Audit evidence supports investigations. Idempotency and reconciliation protect transaction integrity. Cost governance prevents abandoned environments. Human oversight prevents an AI suggestion from becoming an uncontrolled production change.

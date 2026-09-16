# Day 001 Learning Environment Architecture

```mermaid
flowchart LR
  U[Engineer] --> SSH[SSH Session]
  SSH --> EC2[Shared Learning EC2 Host]
  EC2 --> SS[ShopSphere Directory and Git Metadata]
  EC2 --> FB[FinBank Directory and Git Metadata]
  SS --> SSR[ShopSphere GitHub Repository]
  FB --> FBR[FinBank GitHub Repository]
  FB --> CLI[AWS CLI and DevOps Tooling]
  CLI --> AWS[AWS Learning Account]
  FB --> DOC[Documentation, Labs and Evidence]
```

## Isolation boundary
The repositories share compute only. They do not share `.git`, source trees, branches, remotes, documentation or application configuration.

## Future target
The EC2 host may act as a controlled learning workstation. FinBank workloads will later be deployed to separately named AWS resources through Terraform and CI/CD. Resource names, tags, state and credentials must never be reused from ShopSphere without an explicit reviewed design.

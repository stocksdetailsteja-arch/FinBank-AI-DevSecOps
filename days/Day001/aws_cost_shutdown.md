# Day 001 AWS Cost and Shutdown Checklist

Day 001 does not require provisioning a new AWS resource.

## Verify before ending
- [ ] No EC2 instance was created for Day 001.
- [ ] No EBS volume, Elastic IP, load balancer, NAT gateway, database or EKS cluster was created.
- [ ] The shared learning EC2 instance remains only if required for the next activity.
- [ ] The instance is stopped when not in use, if stopping is compatible with the existing ShopSphere setup.
- [ ] Budget and billing alerts remain configured.
- [ ] All future resources will include project, environment, owner and expiry tags.

## Tagging convention for later days
```text
Project=FinBank-AI-DevSecOps
Environment=lab
Owner=Akkana-Tejaswar-Sai
ManagedBy=Terraform
CostCenter=learning
ExpiryDate=YYYY-MM-DD
```

Never stop or delete a resource solely because its name looks unfamiliar. Confirm tags, dependencies, state ownership and impact first.

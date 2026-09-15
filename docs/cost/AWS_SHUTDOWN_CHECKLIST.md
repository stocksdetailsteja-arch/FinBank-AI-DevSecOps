# AWS Cost and Shutdown Checklist

Before leaving every lab:
- [ ] List resources by project, owner, environment and expiry tags.
- [ ] Destroy temporary Terraform stacks after saving safe evidence.
- [ ] Delete unused load balancers, target groups and NAT gateways.
- [ ] Scale EKS node groups to the documented minimum or delete the lab cluster.
- [ ] Stop or delete EC2 and non-required database resources.
- [ ] Remove unattached EBS volumes, snapshots and stale Elastic IP addresses when safe.
- [ ] Apply ECR and S3 lifecycle rules to lab artifacts.
- [ ] Check current cost and budget alerts.
- [ ] Verify no secret or account identifier appears in screenshots.
- [ ] Record what remains running, why, owner and planned deletion date.

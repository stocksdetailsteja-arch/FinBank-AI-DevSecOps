# Day 001 Security Notes

## Secrets prohibited from Git and screenshots
- AWS access keys and secret keys
- Session tokens
- Private SSH keys
- Database passwords
- JWT signing secrets
- Personal or real banking data
- Full AWS account identifiers when not required

## Repository controls
- Separate repositories and remotes
- Protected main branch when available
- Pull-request review
- Secret scanning
- Dependency alerts
- No direct production credentials in CI
- Immutable evidence for important releases

## EC2 hygiene
- Prefer SSH keys and Systems Manager patterns over passwords.
- Restrict security-group ingress to required sources and ports.
- Keep packages patched through a controlled change.
- Review listening ports and running services.
- Do not run daily work as root.

## Day 001 threat cases
| Asset | Threat | Control |
|---|---|---|
| Git history | committed secret | ignore rules, scanning, review, immediate rotation |
| ShopSphere | accidental FinBank change | separate roots, remotes and pre-push check |
| AWS account | overprivileged identity | role-based access and least privilege |
| AI prompt | sensitive-data leakage | sanitization and approved assistant |
| EC2 host | exposed service | restricted ingress and listener review |

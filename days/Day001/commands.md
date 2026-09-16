# Day 001 Command Reference

## Repository identity
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote -v
git status --short
```

## Confirm ShopSphere remains separate without changing it
```bash
git -C ~/Projects/ShopSphere rev-parse --show-toplevel
git -C ~/Projects/ShopSphere remote -v
git -C ~/Projects/ShopSphere status --short
```

## Linux baseline
```bash
whoami
id
hostnamectl
uname -a
cat /etc/os-release
nproc
free -h
df -hT
df -ih
ip -brief address
ip route
ss -lntup
```

## Tool inventory
```bash
git --version
aws --version
docker --version 2>/dev/null || true
java -version 2>&1 | head -n 3
mvn -version 2>/dev/null | head -n 3 || true
terraform version 2>/dev/null | head -n 2 || true
kubectl version --client 2>/dev/null || true
```

## AWS identity, do not capture account number in screenshots
```bash
aws sts get-caller-identity
aws configure list
```

## Safe Git review
```bash
git status
git diff --check
git diff
git diff --cached
```

[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🧪 Safe Linux Networking Laboratory

## 🎯 Objective
Capture a redacted networking baseline, start a loopback-only HTTP endpoint, inspect the listening socket, validate a request, stop it cleanly and document controlled DNS and connection failures.

## 1️⃣ Create Branch and Lab Boundary
```bash
cd ~/Projects/FinBank-AI-DevSecOps
git switch main
git pull --ff-only
git switch -c day-005-linux-networking
mkdir -p labs/day005 evidence/day005 screenshots/labs/day005
```

## 2️⃣ Repository Safety
```bash
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## 3️⃣ Inspect Interfaces and Routes
```bash
ip -brief link
ip -brief address
ip route
ip route get 1.1.1.1
```
Do not publish unnecessary IP information. Use the screenshot crop/redaction guidance.

## 4️⃣ Inspect DNS and Sockets
```bash
getent hosts localhost
resolvectl status 2>/dev/null | sed -n '1,80p' || true
ss -lntup
cat /proc/sys/net/ipv4/ip_local_port_range
```

## 5️⃣ Start Loopback-Only HTTP Service
```bash
chmod +x scripts/day005/start-loopback-http.sh scripts/day005/stop-loopback-http.sh
./scripts/day005/start-loopback-http.sh
cat labs/day005/http.pid
ss -lntp | grep '127.0.0.1:18080'
```

## 6️⃣ Validate HTTP Request
```bash
curl --fail --silent --show-error http://127.0.0.1:18080/health.txt
curl --verbose --max-time 3 http://127.0.0.1:18080/health.txt 2> evidence/day005/curl-verbose.txt > evidence/day005/health-response.txt
cat evidence/day005/health-response.txt
```

## 7️⃣ Stop and Verify
```bash
./scripts/day005/stop-loopback-http.sh
ss -lntp | grep '127.0.0.1:18080' || echo 'EXPECTED: loopback service is stopped'
```

## 8️⃣ Controlled Failures
```bash
curl --max-time 2 http://127.0.0.1:18081/ > /dev/null 2> evidence/day005/connection-refused.txt || true
cat evidence/day005/connection-refused.txt
getent hosts invalid-day005.invalid > evidence/day005/invalid-dns.txt 2>&1 || true
if [[ -s evidence/day005/invalid-dns.txt ]]; then cat evidence/day005/invalid-dns.txt; else echo 'EXPECTED: invalid name returned no address'; fi
```

## 9️⃣ Generate Baseline and Validate
```bash
chmod +x scripts/day005/collect-network-baseline.sh scripts/day005/validate-day005.sh
./scripts/day005/collect-network-baseline.sh
./scripts/day005/validate-day005.sh
```

> [!CAUTION]
> Do not bind the lab service to `0.0.0.0`, change cloud security groups, flush DNS, modify routes or disable firewall controls.

---

**🏦 FinBank AI DevSecOps · Day 005 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

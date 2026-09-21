[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# ⌨️ Day 005 Command Center

## 🧭 Repository Safety
```bash
cd ~/Projects/FinBank-AI-DevSecOps
pwd
git rev-parse --show-toplevel
git branch --show-current
git remote get-url origin
```

## 🌐 Interfaces and Routes
```bash
ip -brief link
ip -brief address
ip route
ip -6 route
ip route get 1.1.1.1
```

## 🔎 DNS
```bash
resolvectl status 2>/dev/null | sed -n '1,80p' || true
getent hosts localhost
getent ahosts localhost
cat /etc/nsswitch.conf | grep '^hosts:'
```

## 🔌 Sockets
```bash
ss -lntup
ss -tan state established
cat /proc/sys/net/ipv4/ip_local_port_range
```

## 🧪 Loopback HTTP
```bash
curl --fail --silent --show-error http://127.0.0.1:18080/health.txt
curl --verbose --max-time 3 http://127.0.0.1:18080/health.txt
```

## ✅ Quality Gates
```bash
bash -n scripts/day005/collect-network-baseline.sh
bash -n scripts/day005/start-loopback-http.sh
bash -n scripts/day005/stop-loopback-http.sh
bash -n scripts/day005/validate-day005.sh
git diff --check
```

---

**🏦 FinBank AI DevSecOps · Day 005 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

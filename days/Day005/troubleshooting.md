[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🚨 Production Networking Troubleshooting

> [!TIP]
> Confirm source, destination, protocol, port and customer impact. Then test one layer at a time and preserve timestamps.

## 1. DNS Resolves but Connection Times Out
Check selected route, security controls, return path, service listener and load balancer health. A DNS answer proves only name resolution.

## 2. Connection Refused
The destination actively rejected the TCP connection. Verify correct IP/port, listener, bind address, service state and local firewall before retrying.

## 3. Port Listens on localhost but Remote Clients Fail
A service bound to `127.0.0.1` is intentionally host-local. Confirm the required exposure and never switch to `0.0.0.0` without security review.

## 4. Intermittent DNS Failures
Inspect resolver health, search domains, timeout/retry behavior, cache, upstream availability and application connection reuse. Preserve failed query times.

## 5. TLS Handshake Fails
Validate hostname, certificate chain, expiry, time, protocol/cipher compatibility and interception. Do not disable certificate verification as a fix.

## 6. High TIME-WAIT Count
Correlate traffic volume, connection reuse, client behavior and ephemeral-port pressure. TIME-WAIT is normal; arbitrary kernel tuning can create correctness risk.

## 7. Established TCP Yet Application Is Unhealthy
Inspect HTTP status, readiness, dependency health, queues, authentication and business response. TCP establishment is not application readiness.

## 8. Works by IP but Not Hostname
Investigate DNS record, search domain, `/etc/hosts`, NSS order and application hostname/TLS requirements.

## 9. One Direction Works but Return Traffic Fails
Check asymmetric routing, stateful controls, NACLs, source translation and route tables on both sides.

## 10. Payment Latency Increased Without Packet Loss
Review DNS duration, connection establishment, TLS timing, server latency, pool exhaustion, retransmissions and downstream dependencies.

---

**🏦 FinBank AI DevSecOps · Day 005 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

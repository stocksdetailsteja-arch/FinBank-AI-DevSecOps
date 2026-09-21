[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🎯 Senior MNC-Style Interview Questions & Answers

> [!NOTE]
> Original enterprise-style practice content, not leaked or verbatim employer questions.

## 1️⃣ TCP vs UDP?
TCP provides a connection-oriented ordered byte stream with retransmission. UDP sends independent datagrams without connection establishment or delivery guarantees.

## 2️⃣ What happens when a client opens a TCP connection?
The client selects a source address and ephemeral port, routing selects a path, and SYN/SYN-ACK/ACK establishes state before application exchange.

## 3️⃣ DNS resolution vs connectivity?
DNS maps a name to records. Connectivity depends on routes, security controls, listener, protocol, TLS and application readiness.

## 4️⃣ What does `0.0.0.0` mean for a listener?
It usually means all IPv4 local interfaces. This broadens exposure compared with loopback or a specific private interface.

## 5️⃣ What is CIDR?
CIDR combines an address with prefix length, defining network and host bits. Incorrect prefixes can cause wrong local/remote routing decisions.

## 6️⃣ Why use `ip route get`?
It asks the kernel which route, source and interface it would select for a destination without requiring an application request.

## 7️⃣ Connection refused vs timeout?
Refused usually means an active rejection or no listener. Timeout indicates missing response and can involve filtering, path or silent failure.

## 8️⃣ LISTEN vs ESTAB?
LISTEN waits for inbound TCP connections. ESTAB represents an established connection. Neither alone proves application business health.

## 9️⃣ What is TIME-WAIT?
A post-close TCP state that prevents delayed segments from contaminating a new connection tuple. It is often normal at scale.

## 🔟 Why can ping fail while HTTPS works?
ICMP may be restricted while TCP/443 is allowed. Ping is not a definitive application availability test.

## 1️⃣1️⃣ What is an ephemeral port?
A temporary local source port allocated for outbound connections. High concurrency and poor reuse can cause exhaustion.

## 1️⃣2️⃣ How do you troubleshoot TLS errors?
Separate DNS, TCP and TLS. Validate hostname, trust chain, expiry, time, SNI and protocol compatibility without disabling verification.

## 1️⃣3️⃣ What creates asymmetric routing risk?
Different forward and reverse paths can conflict with stateful firewalls, NAT or policy routing, causing one-way or intermittent failures.

## 1️⃣4️⃣ Banking scenario: service listens publicly by mistake. Response?
Restrict exposure immediately through approved controls, assess access logs and data risk, rotate compromised credentials if necessary, validate intended private path and fix deployment policy.

## 1️⃣5️⃣ How do you prove an application is ready?
Use an application-level readiness check that verifies essential dependencies and safe ability to serve, not only an open port or process existence.

---

**🏦 FinBank AI DevSecOps · Day 005 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

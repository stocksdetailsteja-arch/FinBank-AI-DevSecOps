[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 📝 Day 005 Engineering Lab Notes

## 🧭 Session Context
- Date:
- Branch:
- Repository root:
- Origin:

## 🌐 Interface Baseline
| Signal | Observation |
|---|---|
| loopback state | |
| primary interface | |
| address family | |
| default route present | |
| selected outbound interface | |

## 🔎 DNS Analysis
- resolver implementation:
- nameserver scope:
- `localhost` result:
- NSS hosts order:
- invalid-name result:

## 🔌 Socket Analysis
| Signal | Observation |
|---|---|
| SSH listener | |
| DNS stub | |
| loopback lab listener | |
| ephemeral port range | |
| unexpected listener review | |

## 🧪 HTTP Validation
- PID:
- bind address:
- port:
- response:
- protocol observation:
- stop validation:

## 🚨 Failure Analysis
| Failure | Symptom | Layer | Safe conclusion |
|---|---|---|---|
| refused local port | | | |
| invalid DNS name | | | |

## 🤖 AI Validation Record
- Sanitized signals:
- AI hypotheses:
- Unsafe change suggestions rejected:
- Layered diagnosis:
- Human conclusion:

## 🏦 Banking Reflection
- segmentation control:
- availability signal:
- TLS requirement:
- transaction risk:

## 🌐 Networking Baseline

### Branch

day-005-linux-networking

### Repository Verification

FinBank-AI-DevSecOps verified.

### Interface Review

Interfaces were inspected using:

ip -brief link

and

ip -brief address

### Routing Review

Kernel route evaluation was inspected
using:

ip route

and

ip route get 1.1.1.1

### Engineering Observation

The Linux kernel maintains routing
information separately from application
traffic.

Route selection determines the next hop
and outbound interface used for
connectivity.

### Banking Production Relevance

Payment applications depend on:

- Correct network interfaces
- Valid routing tables
- Reachable gateways
- Stable outbound paths

Network failures may prevent transaction
requests from reaching downstream
services.

### Screenshot References

001_Day005_Repository_Safety.png

002_Network_Interfaces_And_Addresses.png

003_Routing_Table_And_Path_Selection.png

## 🌐 Interface Analysis

### Loopback Interface

lo

State:

UP

### Primary Interface

ens5

State:

UP

### Engineering Observation

The host contains both loopback and
primary network interfaces.

The loopback adapter enables local
service communication.

The primary interface provides
external network connectivity.

### Screenshot Reference

002_Network_Interfaces_And_Addresses.png

## 🧭 Routing Analysis

### Default Route

Present

### Outbound Interface

ens5

### Engineering Observation

The Linux routing table contains a
valid default route.

Traffic destined for external networks
can be forwarded through the configured
gateway.

### Banking Production Relevance

Payment applications depend on correct
routing behavior to reach:

- API gateways
- Databases
- Fraud services
- Monitoring systems

Routing failures may interrupt
transaction processing.

### Screenshot Reference

003_Routing_Table_And_Path_Selection.png

## 🔎 DNS Analysis

### Host Lookup

localhost

### Resolution Result

::1

### NSS Order

files dns

### Engineering Observation

Linux first evaluates local host entries
before performing DNS resolution.

This behavior can influence
troubleshooting activities.

### Banking Production Relevance

Incorrect DNS behavior can prevent
payment systems from locating services,
API gateways and external dependencies.

### Screenshot Reference

004_DNS_Resolver_And_Name_Resolution.png

## 🔌 Loopback HTTP Service Analysis

### Service PID

3934

### Bind Address

127.0.0.1

### Port

18080

### Service Process

python3

### Engineering Observation

The service was intentionally bound to
the loopback interface.

This prevents external network access
while allowing local connectivity
validation.

### Screenshot Reference

006_Loopback_HTTP_Service_Started.png

## ✅ Connectivity Validation

### Response

FINBANK_DAY005_OK

### Engineering Observation

A successful HTTP request was
completed using the loopback interface.

The networking stack correctly handled:

- DNS-independent routing
- TCP connectivity
- HTTP processing

### Screenshot Reference

007_Curl_HTTP_Connectivity_Validation.png

## 🚨 Failure Analysis

### Test

Connection Refused

### Port

18081

### Result

Failed to connect

### Engineering Interpretation

No process was listening on the target
port.

The operating system correctly rejected
the connection attempt.

### Banking Production Relevance

Connection-refused events commonly
occur when:

- Services are stopped
- Deployments fail
- Wrong ports are configured
- Health checks target invalid endpoints

### Screenshot Reference

008_Connection_Refused_And_DNS_Failure.png
---

**🏦 FinBank AI DevSecOps · Day 005 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

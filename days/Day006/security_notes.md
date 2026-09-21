[🏠 Overview](README.md) · [🧠 Concepts](concepts.md) · [🧪 Lab](lab_guide.md) · [🚨 Troubleshooting](troubleshooting.md) · [🎯 Interview](interview_questions.md) · [📸 Evidence](screenshot_checklist.md)

---

# 🔐 Package & Supply-Chain Security

## 🛡️ Controls
- Approved signed repositories only
- Minimal repository set
- Package/source inventory
- No signature bypass
- Dependency and transitive-risk review
- Artifact retention and provenance
- Controlled privileged execution
- Vulnerability prioritization
- Drift and integrity monitoring
- Tested rollback and canary deployment

## ⚠️ Threat Matrix
| Threat | Example | Control |
|---|---|---|
| malicious repository | unreviewed third-party source | approved source allowlist |
| key compromise | forged signed metadata | key rotation and incident response |
| dependency confusion | unintended package source | namespace/source policy |
| stale packages | forgotten hold | hold review and vulnerability tracking |
| config overwrite | unmanaged conffile decision | configuration-as-code and backup |
| package drift | ad-hoc host changes | immutable images and inventory |

> [!WARNING]
> Never paste repository keys, authentication tokens, proxy credentials, full private source URLs or internal package inventories into public evidence.

---

**🏦 FinBank AI DevSecOps · Day 006 of 120**
*Learn · Build · Validate · Secure · Document · Improve*

# Day020 Risk Priority Review
## Model
Severity + exposure + exploit + asset tier - control strength.
| Score | Finding | Severity | Exposure | Exploit | Asset | Control | Treatment |
|---:|---|---|---|---|---|---|---|
| 95 | SYN-001 | critical | external | active | tier1 | moderate | patch-and-canary |
| 72 | SYN-005 | high | internal | active | tier2 | moderate | isolate-and-remediate |
| 63 | SYN-002 | high | internal | public | tier1 | strong | validate-and-schedule |
| 62 | SYN-004 | medium | external | limited | tier2 | weak | mitigate-and-patch |
| 38 | SYN-003 | critical | isolated | none | tier3 | strong | dispute-or-accept |

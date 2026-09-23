# Day022 Automation Risk Review
| Score | Risk | Scope | Privilege | Command | Secrets | Handler | Rollback | Owner | Action |
|---:|---|---|---|---|---|---|---|---|---|
| 105 | AUTO-001 | fleet | high | yes | no | restart | weak | platform | replace-command-and-canary |
| 68 | AUTO-003 | group | medium | no | yes | none | moderate | security | remove-secret-and-rotate |
| 68 | AUTO-004 | fleet | medium | no | no | restart | moderate | operations | serial-rollout |
| 18 | AUTO-002 | canary | low | no | no | reload | strong | payments | approve-with-monitoring |

# paas-keycloak

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2](https://img.shields.io/badge/AppVersion-2-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository                                | Name     | Version |
| ----------------------------------------- | -------- | ------- |
| https://codecentric.github.io/helm-charts | keycloak | 18.1.1  |

## Values

| Key                                                          | Type   | Default                                                   | Description |
| ------------------------------------------------------------ | ------ | --------------------------------------------------------- | ----------- |
| certificate.dnsNames[0]                                      | string | `"webapp.test"`                                           |             |
| certificate.enabled                                          | bool   | `true`                                                    |             |
| certificate.host                                             | string | `"webapp.test"`                                           |             |
| certificate.issuer                                           | string | `"letsencrypt-dns"`                                       |             |
| certificate.name                                             | string | `"webapp"`                                                |             |
| certificate.namespace                                        | string | `"default"`                                               |             |
| ingress.annotations."cert-manager.io/cluster-issuer"         | string | `"letsencrypt-dns"`                                       |             |
| ingress.annotations."certmanager.k8s.io/acme-challenge-type" | string | `"dns01"`                                                 |             |
| ingress.enabled                                              | bool   | `true`                                                    |             |
| ingress.entrypoints[0]                                       | string | `"websecure"`                                             |             |
| ingress.name                                                 | string | `"webapp"`                                                |             |
| ingress.namespace                                            | string | `"default"`                                               |             |
| ingress.routes[0].kind                                       | string | `"Rule"`                                                  |             |
| ingress.routes[0].match                                      | string | `"Host(`webapp.test`)"`                                   |             |
| ingress.routes[0].services[0].name                           | string | `"webapp"`                                                |             |
| ingress.routes[0].services[0].namespace                      | string | `"default"`                                               |             |
| ingress.routes[0].services[0].port                           | int    | `7512`                                                    |             |
| ingress.tls.enabled                                          | bool   | `true`                                                    |             |
| ingress.tls.secretName                                       | string | `"webapp"`                                                |             |
| keycloak.extraEnv                                            | string | `"- name: PROXY_ADDRESS_FORWARDING\n  value: \"true\"\n"` |             |
| keycloak.ingress.enabled                                     | bool   | `false`                                                   |             |
| keycloak.ingress.postgresql.enabled                          | bool   | `true`                                                    |             |
| keycloak.ingress.serviceMonitor.enabled                      | bool   | `true`                                                    |             |
| keycloak.replicas                                            | int    | `1`                                                       |             |
| secretRoute53.enabled                                        | bool   | `true`                                                    |             |
| secretRoute53.name                                           | string | `"route53-secret"`                                        |             |
| secretRoute53.namespace                                      | string | `"default"`                                               |             |
| secretRoute53.secret_key                                     | string | `"bXktc3VwZXItc2VjcmV0LWtleQ=="`                          |             |

---

Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)

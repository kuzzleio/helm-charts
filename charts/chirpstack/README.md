# chirpstack

![Version: 1.1.1](https://img.shields.io/badge/Version-1.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 4.9.0](https://img.shields.io/badge/AppVersion-4.9.0-informational?style=flat-square)

ChirpStack Kubernetes Chart

## Values

| Key                                        | Type   | Default                                                  | Description |
| ------------------------------------------ | ------ | -------------------------------------------------------- | ----------- |
| chirpstack.affinity                        | object | `{}`                                                     |             |
| chirpstack.apiSecret                       | string | `"you-must-replace-me"`                                  |             |
| chirpstack.args\[0\]                       | string | `"--config"`                                             |             |
| chirpstack.args\[1\]                       | string | `"/etc/chirpstack"`                                      |             |
| chirpstack.command                         | list   | `[]`                                                     |             |
| chirpstack.extraConfigFiles                | object | `{}`                                                     |             |
| chirpstack.extraEnvs                       | list   | `[]`                                                     |             |
| chirpstack.http.containerPort              | int    | `8080`                                                   |             |
| chirpstack.http.port                       | int    | `8080`                                                   |             |
| chirpstack.image.pullPolicy                | string | `"IfNotPresent"`                                         |             |
| chirpstack.image.repository                | string | `"chirpstack/chirpstack"`                                |             |
| chirpstack.image.tag                       | string | `""`                                                     |             |
| chirpstack.ingress.annotations             | object | `{}`                                                     |             |
| chirpstack.ingress.className               | string | `""`                                                     |             |
| chirpstack.ingress.enabled                 | bool   | `false`                                                  |             |
| chirpstack.ingress.hosts                   | string | `nil`                                                    |             |
| chirpstack.ingress.tls                     | list   | `[]`                                                     |             |
| chirpstack.logLevel                        | string | `"info"`                                                 |             |
| chirpstack.metrics.enabled                 | bool   | `false`                                                  |             |
| chirpstack.metrics.port                    | int    | `8081`                                                   |             |
| chirpstack.name                            | string | `"chirpstack"`                                           |             |
| chirpstack.network.enabledRegions\[0\]     | string | `"eu868"`                                                |             |
| chirpstack.network.netId                   | string | `"000000"`                                               |             |
| chirpstack.nodeSelector                    | object | `{}`                                                     |             |
| chirpstack.podAnnotations                  | object | `{}`                                                     |             |
| chirpstack.podSecurityContext              | object | `{}`                                                     |             |
| chirpstack.postgres.database               | string | `"chirpstack"`                                           |             |
| chirpstack.postgres.host                   | string | `"localhost"`                                            |             |
| chirpstack.postgres.password               | string | `"postgres"`                                             |             |
| chirpstack.postgres.port                   | int    | `5432`                                                   |             |
| chirpstack.postgres.sslMode                | string | `"disable"`                                              |             |
| chirpstack.postgres.user                   | string | `"postgres"`                                             |             |
| chirpstack.redis.cluster                   | bool   | `false`                                                  |             |
| chirpstack.redis.servers\[0\]              | string | `"redis://localhost/"`                                   |             |
| chirpstack.redis.tlsEnabled                | bool   | `false`                                                  |             |
| chirpstack.regions.eu868.mqtt.commandTopic | string | `"eu868/gateway/{{ gateway_id }}/command/{{ command }}"` |             |
| chirpstack.regions.eu868.mqtt.eventTopic   | string | `"eu868/gateway/+/event/+"`                              |             |
| chirpstack.regions.mqtt.host               | string | `"localhost"`                                            |             |
| chirpstack.regions.mqtt.port               | int    | `1883`                                                   |             |
| chirpstack.replicaCount                    | int    | `1`                                                      |             |
| chirpstack.resources                       | object | `{}`                                                     |             |
| chirpstack.securityContext                 | object | `{}`                                                     |             |
| chirpstack.service.annotations             | object | `{}`                                                     |             |
| chirpstack.service.spec                    | object | `{}`                                                     |             |
| chirpstack.service.type                    | string | `"ClusterIP"`                                            |             |
| chirpstack.tolerations                     | list   | `[]`                                                     |             |
| chirpstackRestApi.affinity                 | object | `{}`                                                     |             |
| chirpstackRestApi.args                     | list   | `[]`                                                     |             |
| chirpstackRestApi.command                  | list   | `[]`                                                     |             |
| chirpstackRestApi.enabled                  | bool   | `false`                                                  |             |
| chirpstackRestApi.extraEnvs                | list   | `[]`                                                     |             |
| chirpstackRestApi.http.containerPort       | int    | `8090`                                                   |             |
| chirpstackRestApi.http.cors                | string | `"0.0.0.0"`                                              |             |
| chirpstackRestApi.http.insecure            | bool   | `true`                                                   |             |
| chirpstackRestApi.http.port                | int    | `8090`                                                   |             |
| chirpstackRestApi.image.pullPolicy         | string | `"IfNotPresent"`                                         |             |
| chirpstackRestApi.image.repository         | string | `"chirpstack/chirpstack-rest-api"`                       |             |
| chirpstackRestApi.image.tag                | string | `""`                                                     |             |
| chirpstackRestApi.ingress.annotations      | object | `{}`                                                     |             |
| chirpstackRestApi.ingress.className        | string | `""`                                                     |             |
| chirpstackRestApi.ingress.enabled          | bool   | `false`                                                  |             |
| chirpstackRestApi.ingress.hosts            | string | `nil`                                                    |             |
| chirpstackRestApi.ingress.tls              | list   | `[]`                                                     |             |
| chirpstackRestApi.name                     | string | `"chirpstack-rest-api"`                                  |             |
| chirpstackRestApi.nodeSelector             | object | `{}`                                                     |             |
| chirpstackRestApi.podAnnotations           | object | `{}`                                                     |             |
| chirpstackRestApi.podSecurityContext       | object | `{}`                                                     |             |
| chirpstackRestApi.replicaCount             | int    | `1`                                                      |             |
| chirpstackRestApi.resources                | object | `{}`                                                     |             |
| chirpstackRestApi.securityContext          | object | `{}`                                                     |             |
| chirpstackRestApi.service.annotations      | object | `{}`                                                     |             |
| chirpstackRestApi.service.spec             | object | `{}`                                                     |             |
| chirpstackRestApi.service.type             | string | `"ClusterIP"`                                            |             |
| chirpstackRestApi.tolerations              | list   | `[]`                                                     |             |
| fullnameOverride                           | string | `""`                                                     |             |
| imagePullSecrets                           | list   | `[]`                                                     |             |
| nameOverride                               | string | `""`                                                     |             |

______________________________________________________________________

Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)

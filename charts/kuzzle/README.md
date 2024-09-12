# kuzzle

![Version: 1.3.0](https://img.shields.io/badge/Version-1.3.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.29.1](https://img.shields.io/badge/AppVersion-2.29.1-informational?style=flat-square)

Kuzzle Kubernetes Chart

## Values

| Key                                         | Type   | Default                                          | Description |
| ------------------------------------------- | ------ | ------------------------------------------------ | ----------- |
| affinity                                    | object | `{}`                                             |             |
| args                                        | list   | `[]`                                             |             |
| command                                     | list   | `[]`                                             |             |
| entrypoints.cluster_command.port            | int    | `7510`                                           |             |
| entrypoints.cluster_command.targetPort      | int    | `7510`                                           |             |
| entrypoints.cluster_sync.port               | int    | `7511`                                           |             |
| entrypoints.cluster_sync.targetPort         | int    | `7511`                                           |             |
| entrypoints.http.port                       | int    | `7512`                                           |             |
| entrypoints.http.targetPort                 | int    | `7512`                                           |             |
| extraEntrypoints\[0\].name                  | string | `"mqtt"`                                         |             |
| extraEntrypoints\[0\].port                  | int    | `1883`                                           |             |
| extraEntrypoints\[0\].protocol              | string | `"TCP"`                                          |             |
| extraEntrypoints\[0\].targetPort            | int    | `1883`                                           |             |
| extraEntrypoints\[1\].name                  | string | `"debug"`                                        |             |
| extraEntrypoints\[1\].port                  | int    | `9229`                                           |             |
| extraEntrypoints\[1\].protocol              | string | `"TCP"`                                          |             |
| extraEntrypoints\[1\].targetPort            | int    | `9229`                                           |             |
| extraEnvs\[0\].name                         | string | `"kuzzle_services__storageEngine__client__node"` |             |
| extraEnvs\[0\].value                        | string | `"http://elasticsearch-master:9200"`             |             |
| extraEnvs\[1\].name                         | string | `"kuzzle_services__internalCache__node__host"`   |             |
| extraEnvs\[1\].value                        | string | `"redis-master"`                                 |             |
| extraEnvs\[2\].name                         | string | `"kuzzle_services__memoryStorage__node__host"`   |             |
| extraEnvs\[2\].value                        | string | `"redis-master"`                                 |             |
| extraEnvs\[3\].name                         | string | `"NODE_ENV"`                                     |             |
| extraEnvs\[3\].value                        | string | `"production"`                                   |             |
| extraInitContainers                         | list   | `[]`                                             |             |
| fullnameOverride                            | string | `""`                                             |             |
| image.name                                  | string | `"kuzzleio/kuzzle"`                              |             |
| image.pullPolicy                            | string | `"Always"`                                       |             |
| image.tag                                   | string | `""`                                             |             |
| imagePullSecrets                            | list   | `[]`                                             |             |
| ingress.annotations                         | object | `{}`                                             |             |
| ingress.className                           | string | `""`                                             |             |
| ingress.enabled                             | bool   | `false`                                          |             |
| ingress.hosts                               | list   | `[]`                                             |             |
| ingress.tls                                 | list   | `[]`                                             |             |
| labels                                      | object | `{}`                                             |             |
| metrics.path                                | string | `"/_/metrics"`                                   |             |
| metrics.port                                | int    | `7512`                                           |             |
| nameOverride                                | string | `""`                                             |             |
| nodeSelector                                | object | `{}`                                             |             |
| podLabels                                   | object | `{}`                                             |             |
| podSecurityContext.fsGroup                  | int    | `1000`                                           |             |
| probes.liveness.httpGet.path                | string | `"/_healthcheck"`                                |             |
| probes.liveness.httpGet.port                | string | `"kuzzle-api"`                                   |             |
| probes.readiness.httpGet.path               | string | `"/_healthcheck"`                                |             |
| probes.readiness.httpGet.port               | string | `"kuzzle-api"`                                   |             |
| replicaCount                                | int    | `1`                                              |             |
| resources                                   | object | `{}`                                             |             |
| securityContext                             | object | `{}`                                             |             |
| tolerations                                 | list   | `[]`                                             |             |
| updateStrategy.rollingUpdate.maxSurge       | int    | `1`                                              |             |
| updateStrategy.rollingUpdate.maxUnavailable | int    | `1`                                              |             |
| updateStrategy.type                         | string | `"RollingUpdate"`                                |             |

______________________________________________________________________

Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)

# paas-kuzzle

![Version: 2.6.0](https://img.shields.io/badge/Version-2.6.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.29.1](https://img.shields.io/badge/AppVersion-2.29.1-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository                              | Name          | Version |
| --------------------------------------- | ------------- | ------- |
| https://charts.bitnami.com/bitnami/     | redis         | 16.12.2 |
| https://helm.elastic.co/                | elasticsearch | 7.17.3  |
| https://kuzzleio.github.io/helm-charts/ | kuzzle        | 1.3.0   |

## Values

| Key                                                          | Type   | Default                                          | Description |
| ------------------------------------------------------------ | ------ | ------------------------------------------------ | ----------- |
| certificate.enabled                                          | bool   | `false`                                          |             |
| elasticsearch.esJavaOpts                                     | string | `"-Xmx512m -Xms512m"`                            |             |
| elasticsearch.imageTag                                       | string | `"7.10.2"`                                       |             |
| elasticsearch.minimumMasterNodes                             | int    | `1`                                              |             |
| elasticsearch.replicas                                       | int    | `1`                                              |             |
| elasticsearch.resources.limits.cpu                           | string | `"1000m"`                                        |             |
| elasticsearch.resources.limits.memory                        | string | `"1G"`                                           |             |
| elasticsearch.resources.requests.cpu                         | string | `"700m"`                                         |             |
| elasticsearch.resources.requests.memory                      | string | `"512M"`                                         |             |
| elasticsearch.roles.data                                     | string | `"true"`                                         |             |
| elasticsearch.roles.ingest                                   | string | `"true"`                                         |             |
| elasticsearch.roles.master                                   | string | `"true"`                                         |             |
| elasticsearch.roles.ml                                       | string | `nil`                                            |             |
| elasticsearch.roles.remote_cluster_client                    | string | `nil`                                            |             |
| elasticsearch.volumeClaimTemplate.accessModes\[0\]           | string | `"ReadWriteOnce"`                                |             |
| elasticsearch.volumeClaimTemplate.resources.requests.storage | string | `"15Gi"`                                         |             |
| elasticsearch.volumeClaimTemplate.storageClassName           | string | `"scw-bssd"`                                     |             |
| ingress.enabled                                              | bool   | `false`                                          |             |
| ingressTCP.enabled                                           | bool   | `false`                                          |             |
| kuzzle.extraEnvs\[0\].name                                   | string | `"kuzzle_services__storageEngine__client__node"` |             |
| kuzzle.extraEnvs\[0\].value                                  | string | `"http://elasticsearch-master:9200"`             |             |
| kuzzle.extraEnvs\[1\].name                                   | string | `"kuzzle_services__internalCache__node__host"`   |             |
| kuzzle.extraEnvs\[1\].value                                  | string | `"redis-master"`                                 |             |
| kuzzle.extraEnvs\[2\].name                                   | string | `"kuzzle_services__memoryStorage__node__host"`   |             |
| kuzzle.extraEnvs\[2\].value                                  | string | `"redis-master"`                                 |             |
| kuzzle.extraEnvs\[3\].name                                   | string | `"NODE_ENV"`                                     |             |
| kuzzle.extraEnvs\[3\].value                                  | string | `"production"`                                   |             |
| kuzzle.image.name                                            | string | `"kuzzleio/kuzzle"`                              |             |
| kuzzle.image.pullPolicy                                      | string | `"Always"`                                       |             |
| kuzzle.image.tag                                             | string | `""`                                             |             |
| kuzzle.imagePullSecrets\[0\].name                            | string | `"kuzzle-docker"`                                |             |
| kuzzle.metrics.path                                          | string | `"/_/metrics"`                                   |             |
| kuzzle.metrics.port                                          | int    | `7512`                                           |             |
| kuzzle.replicaCount                                          | int    | `1`                                              |             |
| redis.auth.enabled                                           | bool   | `false`                                          |             |
| redis.master.persistence.enabled                             | bool   | `true`                                           |             |
| redis.master.persistence.size                                | string | `"10Gi"`                                         |             |
| redis.master.resources.limits.cpu                            | string | `"600m"`                                         |             |
| redis.master.resources.limits.memory                         | string | `"250Mi"`                                        |             |
| redis.master.resources.requests.cpu                          | string | `"300m"`                                         |             |
| redis.master.resources.requests.memory                       | string | `"150Mi"`                                        |             |
| redis.metrics.enabled                                        | bool   | `true`                                           |             |
| redis.replica.persistence.enabled                            | bool   | `true`                                           |             |
| redis.replica.persistence.size                               | string | `"10Gi"`                                         |             |
| redis.replica.replicaCount                                   | int    | `1`                                              |             |
| redis.replica.resources.limits.cpu                           | string | `"600m"`                                         |             |
| redis.replica.resources.limits.memory                        | string | `"250Mi"`                                        |             |
| redis.replica.resources.requests.cpu                         | string | `"300m"`                                         |             |
| redis.replica.resources.requests.memory                      | string | `"150Mi"`                                        |             |

______________________________________________________________________

Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)

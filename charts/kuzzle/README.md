# kuzzle

![Version: 1.16.0](https://img.shields.io/badge/Version-1.16.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.56.0](https://img.shields.io/badge/AppVersion-2.56.0-informational?style=flat-square)

Kuzzle Kubernetes chart

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity rules for pod scheduling (advanced usage) |
| args | list | `[]` | Container args override (leave empty to use image default) |
| command | list | `[]` | Container command override (leave empty to use image default) |
| entrypoints.cluster_command.port | int | `7510` | Service port for cluster command channel |
| entrypoints.cluster_command.targetPort | int | `7510` | Container port for cluster command channel |
| entrypoints.cluster_sync.port | int | `7511` | Service port for cluster sync channel |
| entrypoints.cluster_sync.targetPort | int | `7511` | Container port for cluster sync channel |
| entrypoints.http.port | int | `7512` | Service port for HTTP API |
| entrypoints.http.targetPort | int | `7512` | Container port for HTTP API |
| extraEntrypoints | list | `[]` | Additional container ports to expose (e.g., MQTT, debug) |
| extraEnvs | list | `[]` | Additional environment variables to inject into the Kuzzle container |
| extraInitContainers | list | `[]` | Extra init containers to run before the main container |
| fullnameOverride | string | `""` | String to fully override chart name |
| image.name | string | `"kuzzleio/kuzzle"` | Kuzzle container image repository |
| image.pullPolicy | string | `"Always"` | Image pull policy |
| image.tag | string | `"2.56.0"` | Kuzzle image tag (overrides .Chart.AppVersion if set) |
| imagePullSecrets | list | `[]` | List of image pull secrets (for private registries) |
| ingress.annotations | object | `{}` | Additional annotations to add to the Ingress |
| ingress.className | string | `""` | IngressClass name (e.g., nginx, traefik); leave empty to use the cluster default |
| ingress.enabled | bool | `false` | Enable Ingress resource |
| ingress.hosts | list | `[]` | Ingress hosts configuration list |
| ingress.tls | list | `[]` | Ingress TLS configuration list |
| labels | object | `{}` | Extra labels added to all chart resources |
| lifecycle | object | `{"preStop":{"exec":{"command":["/bin/sh","-c","sleep 10"]}}}` | Container lifecycle hooks; the default preStop drains the endpoint before shutdown (set to `{}` to disable) |
| metrics.path | string | `"/_/metrics"` | HTTP path for metrics endpoint |
| metrics.port | int | `7512` | Port exposed for metrics scraping |
| mtls.className | string | `""` | IngressClass of the mTLS ingresses; empty: `ingress.className` |
| mtls.enabled | bool | `false` | Render the mTLS resources |
| mtls.ingresses | list | `[]` | mTLS ingresses, one per tenant host: `[{name, className, labels, annotations, hosts, tls}]`, `hosts`/`tls` shaped like `ingress.hosts`/`ingress.tls` |
| mtls.middlewares.create | bool | `true` | Render the strip and forward Middlewares; false: reference existing ones through their `name` |
| mtls.middlewares.forward.extraSpec | object | `{}` | Deep-merged into `spec.passTLSClientCert` (e.g. `info.subject.commonName: true`) |
| mtls.middlewares.forward.name | string | `""` | Name of the Middleware forwarding the client certificate; empty: `<fullname>-forward-client-cert` |
| mtls.middlewares.forward.pem | bool | `true` | Forward the certificate as PEM |
| mtls.middlewares.strip.name | string | `""` | Name of the Middleware removing the incoming header; empty: `<fullname>-strip-client-cert` |
| mtls.networkPolicy.allowedNamespaces | list | `[]` | Namespaces (besides the release namespace) whose pods may reach Kuzzle; empty allows only the release namespace |
| mtls.networkPolicy.enabled | bool | `true` | Render a NetworkPolicy on the Kuzzle pods when mTLS is enabled |
| mtls.stripOnMainIngress | bool | `true` | Also strip a forged client-certificate header on the main ingress |
| mtls.tlsOption.clientAuthType | string | `"RequestClientCert"` | Traefik `clientAuth.clientAuthType` |
| mtls.tlsOption.create | bool | `true` | Render the TLSOption; false: reference an existing one through `name` |
| mtls.tlsOption.extraSpec | object | `{}` | Deep-merged into the TLSOption spec (e.g. `minVersion`, `sniStrict`, `clientAuth.secretNames`) |
| mtls.tlsOption.name | string | `""` | TLSOption name; empty: `<fullname>-mtls` |
| nameOverride | string | `""` | String to partially override chart name |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| podLabels | object | `{}` | Extra labels added to the pod template metadata |
| podMonitor.enabled | bool | `false` | Render a PodMonitor for the Kuzzle pods (requires the `monitoring.coreos.com/v1` CRD) |
| podMonitor.interval | string | `"60s"` | Scrape interval |
| podMonitor.labels | object | `{}` | Extra labels on the PodMonitor, e.g. to match a collector's selector |
| podMonitor.secretKey | string | `"api-key"` | Key of the API key in that Secret |
| podMonitor.secretName | string | `"kuzzle-metrics-scraper"` | Secret, in the release namespace, holding the API key sent as a Bearer token |
| podMonitor.targetLabels | object | `{}` | Labels set on the scrape target, so that `up` and `scrape_*` carry them too (e.g. `project`, `environment`) |
| podSecurityContext.fsGroup | int | `1000` | fsGroup for shared volumes in the pod |
| probes.liveness.httpGet | object | `{"path":"/_healthcheck","port":"kuzzle-api"}` | Liveness probe configuration |
| probes.liveness.httpGet.path | string | `"/_healthcheck"` | Liveness probe path |
| probes.liveness.httpGet.port | string | `"kuzzle-api"` | Liveness probe port (must match a named port) |
| probes.readiness.httpGet | object | `{"path":"/_ready","port":"kuzzle-api"}` | Readiness probe configuration |
| probes.readiness.httpGet.path | string | `"/_ready"` | Readiness probe path |
| probes.readiness.httpGet.port | string | `"kuzzle-api"` | Readiness probe port (must match a named port) |
| replicaCount | int | `1` | Number of Kuzzle pod replicas |
| resources | object | `{}` | Resource requests/limits for the Kuzzle container |
| securityContext | object | `{}` | Security context for the main Kuzzle container |
| serviceAccountName | string | `""` | Name of an existing ServiceAccount for the pod (empty: the namespace's `default`) |
| terminationGracePeriodSeconds | int | `30` | Grace period between SIGTERM and SIGKILL (the preStop hook runs inside it) |
| tolerations | list | `[]` | Tolerations for tainted nodes |
| topologySpreadConstraints.enabled | bool | `false` | Enable pod distribution via topology spread constraints |
| topologySpreadConstraints.maxSkew | int | `1` | Maximum allowed skew between topology domains (1 = most even) |
| topologySpreadConstraints.topologyKey | string | `"kubernetes.io/hostname"` | Topology key to spread across (e.g., kubernetes.io/hostname or topology.kubernetes.io/zone) |
| topologySpreadConstraints.whenUnsatisfiable | string | `"DoNotSchedule"` | Behavior when constraints cannot be satisfied (DoNotSchedule|ScheduleAnyway) |
| updateStrategy.rollingUpdate.maxSurge | int | `1` | Max surge pods during rolling update |
| updateStrategy.rollingUpdate.maxUnavailable | int | `0` | Max unavailable pods during rolling update |
| updateStrategy.type | string | `"RollingUpdate"` | Deployment update strategy type |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)

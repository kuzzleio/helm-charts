# elasticsearch-8

![Version: 21.7.0](https://img.shields.io/badge/Version-21.7.0-informational?style=flat-square) ![AppVersion: 8.18.0](https://img.shields.io/badge/AppVersion-8.18.0-informational?style=flat-square)

Elasticsearch is a distributed search and analytics engine. It is used for web search, log monitoring, and real-time analytics. Ideal for Big Data applications.

**Homepage:** <https://bitnami.com>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Broadcom, Inc. All Rights Reserved. |  | <https://github.com/bitnami/charts> |

## Source Code

* <https://github.com/bitnami/charts/tree/main/bitnami/elasticsearch>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://registry-1.docker.io/bitnamicharts | common | 2.x.x |
| oci://registry-1.docker.io/bitnamicharts | kibana | 11.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| clusterDomain | string | `"cluster.local"` | Kubernetes cluster domain name |
| clusterName | string | `"elastic"` | Elasticsearch cluster name |
| commonAnnotations | object | `{}` | Annotations to add to all deployed objects |
| commonLabels | object | `{}` | Labels to add to all deployed objects |
| config | object | `{}` | Override elasticsearch configuration |
| containerPorts.restAPI | int | `9200` | Elasticsearch REST API port |
| containerPorts.transport | int | `9300` | Elasticsearch Transport port |
| coordinating.affinity | object | `{}` | Affinity for coordinating-only pods assignment |
| coordinating.annotations | object | `{}` | Annotations for the coordinating-only statefulset |
| coordinating.args | list | `[]` | Override default container args (useful when using custom images) |
| coordinating.automountServiceAccountToken | bool | `false` | Mount Service Account token in pod |
| coordinating.autoscaling.enabled | bool | `false` | Whether enable horizontal pod autoscale |
| coordinating.autoscaling.maxReplicas | int | `11` | Configure a maximum amount of pods |
| coordinating.autoscaling.minReplicas | int | `3` | Configure a minimum amount of pods |
| coordinating.autoscaling.targetCPU | string | `""` | Define the CPU target to trigger the scaling actions (utilization percentage) |
| coordinating.autoscaling.targetMemory | string | `""` | Define the memory target to trigger the scaling actions (utilization percentage) |
| coordinating.command | list | `[]` | Override default container command (useful when using custom images) |
| coordinating.containerSecurityContext.allowPrivilegeEscalation | bool | `false` | Set Elasticsearch coordinating container's Security Context allowPrivilegeEscalation |
| coordinating.containerSecurityContext.capabilities.drop | list | `["ALL"]` | List of capabilities to be dropped |
| coordinating.containerSecurityContext.enabled | bool | `true` | Elasticseacrh coordinating container securityContext |
| coordinating.containerSecurityContext.privileged | bool | `false` | Set Elasticsearch coordinating container's Security Context privileged |
| coordinating.containerSecurityContext.readOnlyRootFilesystem | bool | `true` | Set container's Security Context readOnlyRootFilesystem |
| coordinating.containerSecurityContext.runAsGroup | int | `1001` | Group ID for the Elasticseacrh coordinating container |
| coordinating.containerSecurityContext.runAsNonRoot | bool | `true` | Set Elasticsearch coordinating container's Security Context runAsNonRoot |
| coordinating.containerSecurityContext.runAsUser | int | `1001` | User ID for the Elasticseacrh coordinating container |
| coordinating.containerSecurityContext.seLinuxOptions | object | `{}` | Set SELinux options in container |
| coordinating.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` | Set container's Security Context seccomp profile |
| coordinating.customLivenessProbe | object | `{}` | Override default liveness probe |
| coordinating.customReadinessProbe | object | `{}` | Override default readiness probe |
| coordinating.customStartupProbe | object | `{}` | Override default startup probe |
| coordinating.extraEnvVars | list | `[]` | Array with extra environment variables to add to coordinating-only nodes |
| coordinating.extraEnvVarsCM | string | `""` | Name of existing ConfigMap containing extra env vars for coordinating-only nodes |
| coordinating.extraEnvVarsSecret | string | `""` | Name of existing Secret containing extra env vars for coordinating-only nodes |
| coordinating.extraRoles | list | `[]` | Append extra roles to the node role |
| coordinating.extraVolumeMounts | list | `[]` | Optionally specify extra list of additional volumeMounts for the coordinating-only container(s) |
| coordinating.extraVolumes | list | `[]` | Optionally specify extra list of additional volumes for the coordinating-only pod(s) |
| coordinating.fullnameOverride | string | `""` | String to fully override elasticsearch.coordinating.fullname |
| coordinating.heapSize | string | `"128m"` | Elasticsearch coordinating node heap size. |
| coordinating.hostAliases | list | `[]` | coordinating-only pods host aliases |
| coordinating.initContainers | list | `[]` | Add additional init containers to the coordinating-only pod(s) |
| coordinating.lifecycleHooks | object | `{}` | for the coordinating-only container(s) to automate configuration before or after startup |
| coordinating.livenessProbe.enabled | bool | `true` | Enable/disable the liveness probe (coordinating-only nodes pod) |
| coordinating.livenessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| coordinating.livenessProbe.initialDelaySeconds | int | `180` | Delay before liveness probe is initiated (coordinating-only nodes pod) |
| coordinating.livenessProbe.periodSeconds | int | `10` | How often to perform the probe (coordinating-only nodes pod) |
| coordinating.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (coordinating-only nodes pod) |
| coordinating.livenessProbe.timeoutSeconds | int | `5` | When the probe times out (coordinating-only nodes pod) |
| coordinating.nameOverride | string | `""` | String to partially override elasticsearch.coordinating.fullname |
| coordinating.networkPolicy.allowExternal | bool | `true` | Don't require server label for connections |
| coordinating.networkPolicy.allowExternalEgress | bool | `true` | Allow the pod to access any range of port and all destinations. |
| coordinating.networkPolicy.enabled | bool | `true` | Specifies whether a NetworkPolicy should be created |
| coordinating.networkPolicy.extraEgress | list | `[]` | Add extra ingress rules to the NetworkPolicy |
| coordinating.networkPolicy.extraIngress | list | `[]` | Add extra ingress rules to the NetworkPolicy |
| coordinating.networkPolicy.ingressNSMatchLabels | object | `{}` | Labels to match to allow traffic from other namespaces |
| coordinating.networkPolicy.ingressNSPodMatchLabels | object | `{}` | Pod labels to match to allow traffic from other namespaces |
| coordinating.nodeAffinityPreset.key | string | `""` | Node label key to match. Ignored if `coordinating.affinity` is set |
| coordinating.nodeAffinityPreset.type | string | `""` | Node affinity preset type. Ignored if `coordinating.affinity` is set. Allowed values: `soft` or `hard` |
| coordinating.nodeAffinityPreset.values | list | `[]` | Node label values to match. Ignored if `coordinating.affinity` is set |
| coordinating.nodeSelector | object | `{}` | Node labels for coordinating-only pods assignment |
| coordinating.pdb.create | bool | `true` | Enable/disable a Pod Disruption Budget creation |
| coordinating.pdb.maxUnavailable | string | `""` | Maximum number/percentage of pods that may be made unavailable |
| coordinating.pdb.minAvailable | string | `""` | Minimum number/percentage of pods that should remain scheduled |
| coordinating.podAffinityPreset | string | `""` | Pod affinity preset. Ignored if `coordinating.affinity` is set. Allowed values: `soft` or `hard` |
| coordinating.podAnnotations | object | `{}` | Annotations for coordinating-only pods |
| coordinating.podAntiAffinityPreset | string | `""` | Pod anti-affinity preset. Ignored if `coordinating.affinity` is set. Allowed values: `soft` or `hard` |
| coordinating.podLabels | object | `{}` | Extra labels for coordinating-only pods |
| coordinating.podManagementPolicy | string | `"Parallel"` | podManagementPolicy to manage scaling operation of Elasticsearch coordinating pods |
| coordinating.podSecurityContext.enabled | bool | `true` | Enabled coordinating-only pods' Security Context |
| coordinating.podSecurityContext.fsGroup | int | `1001` | Set coordinating-only pod's Security Context fsGroup |
| coordinating.podSecurityContext.fsGroupChangePolicy | string | `"Always"` | Set filesystem group change policy |
| coordinating.podSecurityContext.supplementalGroups | list | `[]` | Set filesystem extra groups |
| coordinating.podSecurityContext.sysctls | list | `[]` | Set kernel settings using the sysctl interface |
| coordinating.priorityClassName | string | `""` | coordinating-only pods' priorityClassName |
| coordinating.readinessProbe.enabled | bool | `true` | Enable/disable the readiness probe (coordinating-only nodes pod) |
| coordinating.readinessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| coordinating.readinessProbe.initialDelaySeconds | int | `90` | Delay before readiness probe is initiated (coordinating-only nodes pod) |
| coordinating.readinessProbe.periodSeconds | int | `10` | How often to perform the probe (coordinating-only nodes pod) |
| coordinating.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (coordinating-only nodes pod) |
| coordinating.readinessProbe.timeoutSeconds | int | `5` | When the probe times out (coordinating-only nodes pod) |
| coordinating.replicaCount | int | `2` | Number of coordinating-only replicas to deploy |
| coordinating.resources | object | `{}` | Set container requests and limits for different resources like CPU or memory (essential for production workloads) |
| coordinating.resourcesPreset | string | `"small"` | Set container resources according to one common preset (allowed values: none, nano, micro, small, medium, large, xlarge, 2xlarge). This is ignored if coordinating.resources is set (coordinating.resources is recommended for production). |
| coordinating.schedulerName | string | `""` | Name of the k8s scheduler (other than default) for coordinating-only pods |
| coordinating.serviceAccount.annotations | object | `{}` | Annotations for service account. Evaluated as a template. Only used if `create` is `true`. |
| coordinating.serviceAccount.automountServiceAccountToken | bool | `false` | Automount service account token for the server service account |
| coordinating.serviceAccount.create | bool | `true` | Specifies whether a ServiceAccount should be created |
| coordinating.serviceAccount.name | string | `""` | Name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| coordinating.servicenameOverride | string | `""` | String to fully override elasticsearch.coordinating.servicename |
| coordinating.sidecars | list | `[]` | Add additional sidecar containers to the coordinating-only pod(s) |
| coordinating.startupProbe.enabled | bool | `false` | Enable/disable the startup probe (coordinating-only nodes pod) |
| coordinating.startupProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| coordinating.startupProbe.initialDelaySeconds | int | `90` | Delay before startup probe is initiated (coordinating-only nodes pod) |
| coordinating.startupProbe.periodSeconds | int | `10` | How often to perform the probe (coordinating-only nodes pod) |
| coordinating.startupProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (coordinating-only nodes pod) |
| coordinating.startupProbe.timeoutSeconds | int | `5` | When the probe times out (coordinating-only nodes pod) |
| coordinating.terminationGracePeriodSeconds | string | `""` | In seconds, time the given to the Elasticsearch coordinating pod needs to terminate gracefully |
| coordinating.tolerations | list | `[]` | Tolerations for coordinating-only pods assignment |
| coordinating.topologySpreadConstraints | list | `[]` | Topology Spread Constraints for pod assignment spread across your cluster among failure-domains. Evaluated as a template |
| coordinating.updateStrategy.type | string | `"RollingUpdate"` | Coordinating-only nodes statefulset stategy type |
| copyTlsCerts.image.digest | string | `""` | Copy TLS certificates image digest in the way sha256:aa.... Please note this parameter, if set, will override the tag |
| copyTlsCerts.image.pullPolicy | string | `"IfNotPresent"` | Copy TLS certificates image pull policy |
| copyTlsCerts.image.pullSecrets | list | `[]` | Copy TLS certificates image pull secrets |
| copyTlsCerts.image.registry | string | `"docker.io"` | Copy TLS certificates image registry |
| copyTlsCerts.image.repository | string | `"bitnamilegacy/os-shell"` | Copy TLS certificates image repository |
| copyTlsCerts.resources | object | `{}` | Set container requests and limits for different resources like CPU or memory (essential for production workloads) |
| copyTlsCerts.resourcesPreset | string | `"nano"` | Set container resources according to one common preset (allowed values: none, nano, micro, small, medium, large, xlarge, 2xlarge). This is ignored if copyTlsCerts.resources is set (copyTlsCerts.resources is recommended for production). |
| data.affinity | object | `{}` | Affinity for data pods assignment |
| data.annotations | object | `{}` | Annotations for the data statefulset |
| data.args | list | `[]` | Override default container args (useful when using custom images) |
| data.automountServiceAccountToken | bool | `false` | Mount Service Account token in pod |
| data.autoscaling.enabled | bool | `false` | Whether enable horizontal pod autoscale |
| data.autoscaling.maxReplicas | int | `11` | Configure a maximum amount of pods |
| data.autoscaling.minReplicas | int | `3` | Configure a minimum amount of pods |
| data.autoscaling.targetCPU | string | `""` | Define the CPU target to trigger the scaling actions (utilization percentage) |
| data.autoscaling.targetMemory | string | `""` | Define the memory target to trigger the scaling actions (utilization percentage) |
| data.command | list | `[]` | Override default container command (useful when using custom images) |
| data.containerSecurityContext.allowPrivilegeEscalation | bool | `false` | Set Elasticsearch data container's Security Context allowPrivilegeEscalation |
| data.containerSecurityContext.capabilities.drop | list | `["ALL"]` | List of capabilities to be dropped |
| data.containerSecurityContext.enabled | bool | `true` | Elasticseacrh data container securityContext |
| data.containerSecurityContext.privileged | bool | `false` | Set Elasticsearch data container's Security Context privileged |
| data.containerSecurityContext.readOnlyRootFilesystem | bool | `true` | Set container's Security Context readOnlyRootFilesystem |
| data.containerSecurityContext.runAsGroup | int | `1001` | Group ID for the Elasticseacrh data container |
| data.containerSecurityContext.runAsNonRoot | bool | `true` | Set Elasticsearch data container's Security Context runAsNonRoot |
| data.containerSecurityContext.runAsUser | int | `1001` | User ID for the Elasticseacrh data container |
| data.containerSecurityContext.seLinuxOptions | object | `{}` | Set SELinux options in container |
| data.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` | Set container's Security Context seccomp profile |
| data.customLivenessProbe | object | `{}` | Override default liveness probe |
| data.customReadinessProbe | object | `{}` | Override default readiness probe |
| data.customStartupProbe | object | `{}` | Override default startup probe |
| data.extraEnvVars | list | `[]` | Array with extra environment variables to add to data nodes |
| data.extraEnvVarsCM | string | `""` | Name of existing ConfigMap containing extra env vars for data nodes |
| data.extraEnvVarsSecret | string | `""` | Name of existing Secret containing extra env vars for data nodes |
| data.extraRoles | list | `[]` | Append extra roles to the node role |
| data.extraVolumeMounts | list | `[]` | Optionally specify extra list of additional volumeMounts for the data container(s) |
| data.extraVolumes | list | `[]` | Optionally specify extra list of additional volumes for the data pod(s) |
| data.fullnameOverride | string | `""` | String to fully override elasticsearch.data.fullname |
| data.heapSize | string | `"1024m"` | Elasticsearch data node heap size. |
| data.hostAliases | list | `[]` | data pods host aliases |
| data.initContainers | list | `[]` | Add additional init containers to the data pod(s) |
| data.lifecycleHooks | object | `{}` | for the data container(s) to automate configuration before or after startup |
| data.livenessProbe.enabled | bool | `true` | Enable/disable the liveness probe (data nodes pod) |
| data.livenessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| data.livenessProbe.initialDelaySeconds | int | `180` | Delay before liveness probe is initiated (data nodes pod) |
| data.livenessProbe.periodSeconds | int | `10` | How often to perform the probe (data nodes pod) |
| data.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (data nodes pod) |
| data.livenessProbe.timeoutSeconds | int | `5` | When the probe times out (data nodes pod) |
| data.nameOverride | string | `""` | String to partially override elasticsearch.data.fullname |
| data.networkPolicy.allowExternal | bool | `true` | Don't require server label for connections |
| data.networkPolicy.allowExternalEgress | bool | `true` | Allow the pod to access any range of port and all destinations. |
| data.networkPolicy.enabled | bool | `true` | Specifies whether a NetworkPolicy should be created |
| data.networkPolicy.extraEgress | list | `[]` | Add extra ingress rules to the NetworkPolicy |
| data.networkPolicy.extraIngress | list | `[]` | Add extra ingress rules to the NetworkPolicy |
| data.networkPolicy.ingressNSMatchLabels | object | `{}` | Labels to match to allow traffic from other namespaces |
| data.networkPolicy.ingressNSPodMatchLabels | object | `{}` | Pod labels to match to allow traffic from other namespaces |
| data.nodeAffinityPreset.key | string | `""` | Node label key to match. Ignored if `data.affinity` is set |
| data.nodeAffinityPreset.type | string | `""` | Node affinity preset type. Ignored if `data.affinity` is set. Allowed values: `soft` or `hard` |
| data.nodeAffinityPreset.values | list | `[]` | Node label values to match. Ignored if `data.affinity` is set |
| data.nodeSelector | object | `{}` | Node labels for data pods assignment |
| data.pdb.create | bool | `true` | Enable/disable a Pod Disruption Budget creation |
| data.pdb.maxUnavailable | string | `""` | Maximum number/percentage of pods that may be made unavailable |
| data.pdb.minAvailable | string | `""` | Minimum number/percentage of pods that should remain scheduled |
| data.persistence.accessModes | list | `["ReadWriteOnce"]` | Persistent Volume Access Modes |
| data.persistence.annotations | object | `{}` | Persistent Volume Claim annotations |
| data.persistence.enabled | bool | `true` | Enable persistence using a `PersistentVolumeClaim` |
| data.persistence.existingClaim | string | `""` | Existing Persistent Volume Claim |
| data.persistence.existingVolume | string | `""` | Existing Persistent Volume for use as volume match label selector to the `volumeClaimTemplate`. Ignored when `data.persistence.selector` is set. |
| data.persistence.selector | object | `{}` | Configure custom selector for existing Persistent Volume. Overwrites `data.persistence.existingVolume` |
| data.persistence.size | string | `"8Gi"` | Persistent Volume Size |
| data.persistence.storageClass | string | `""` | Persistent Volume Storage Class |
| data.persistentVolumeClaimRetentionPolicy.enabled | bool | `false` | Enable Persistent volume retention policy for Data StatefulSet |
| data.persistentVolumeClaimRetentionPolicy.whenDeleted | string | `"Retain"` | Volume retention behavior that applies when the StatefulSet is deleted |
| data.persistentVolumeClaimRetentionPolicy.whenScaled | string | `"Retain"` | Volume retention behavior when the replica count of the StatefulSet is reduced |
| data.podAffinityPreset | string | `""` | Pod affinity preset. Ignored if `data.affinity` is set. Allowed values: `soft` or `hard` |
| data.podAnnotations | object | `{}` | Annotations for data pods |
| data.podAntiAffinityPreset | string | `""` | Pod anti-affinity preset. Ignored if `data.affinity` is set. Allowed values: `soft` or `hard` |
| data.podLabels | object | `{}` | Extra labels for data pods |
| data.podManagementPolicy | string | `"Parallel"` | podManagementPolicy to manage scaling operation of Elasticsearch data pods |
| data.podSecurityContext.enabled | bool | `true` | Enabled data pods' Security Context |
| data.podSecurityContext.fsGroup | int | `1001` | Set data pod's Security Context fsGroup |
| data.podSecurityContext.fsGroupChangePolicy | string | `"Always"` | Set filesystem group change policy |
| data.podSecurityContext.supplementalGroups | list | `[]` | Set filesystem extra groups |
| data.podSecurityContext.sysctls | list | `[]` | Set kernel settings using the sysctl interface |
| data.priorityClassName | string | `""` | data pods' priorityClassName |
| data.readinessProbe.enabled | bool | `true` | Enable/disable the readiness probe (data nodes pod) |
| data.readinessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| data.readinessProbe.initialDelaySeconds | int | `90` | Delay before readiness probe is initiated (data nodes pod) |
| data.readinessProbe.periodSeconds | int | `10` | How often to perform the probe (data nodes pod) |
| data.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (data nodes pod) |
| data.readinessProbe.timeoutSeconds | int | `5` | When the probe times out (data nodes pod) |
| data.replicaCount | int | `2` | Number of data-only replicas to deploy |
| data.resources | object | `{}` | Set container requests and limits for different resources like CPU or memory (essential for production workloads) |
| data.resourcesPreset | string | `"medium"` | Set container resources according to one common preset (allowed values: none, nano, micro, small, medium, large, xlarge, 2xlarge). This is ignored if data.resources is set (data.resources is recommended for production). |
| data.schedulerName | string | `""` | Name of the k8s scheduler (other than default) for data pods |
| data.serviceAccount.annotations | object | `{}` | Annotations for service account. Evaluated as a template. Only used if `create` is `true`. |
| data.serviceAccount.automountServiceAccountToken | bool | `false` | Automount service account token for the server service account |
| data.serviceAccount.create | bool | `true` | Specifies whether a ServiceAccount should be created |
| data.serviceAccount.name | string | `""` | Name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| data.servicenameOverride | string | `""` | String to fully override elasticsearch.data.servicename |
| data.sidecars | list | `[]` | Add additional sidecar containers to the data pod(s) |
| data.startupProbe.enabled | bool | `false` | Enable/disable the startup probe (data nodes pod) |
| data.startupProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| data.startupProbe.initialDelaySeconds | int | `90` | Delay before startup probe is initiated (data nodes pod) |
| data.startupProbe.periodSeconds | int | `10` | How often to perform the probe (data nodes pod) |
| data.startupProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (data nodes pod) |
| data.startupProbe.timeoutSeconds | int | `5` | When the probe times out (data nodes pod) |
| data.terminationGracePeriodSeconds | string | `""` | In seconds, time the given to the Elasticsearch data pod needs to terminate gracefully |
| data.tolerations | list | `[]` | Tolerations for data pods assignment |
| data.topologySpreadConstraints | list | `[]` | Topology Spread Constraints for pod assignment spread across your cluster among failure-domains. Evaluated as a template |
| data.updateStrategy.type | string | `"RollingUpdate"` | Data-only nodes statefulset stategy type |
| diagnosticMode.args | list | `["infinity"]` | Args to override all containers in the deployment |
| diagnosticMode.command | list | `["sleep"]` | Command to override all containers in the deployment |
| diagnosticMode.enabled | bool | `false` | Enable diagnostic mode (all probes will be disabled and the command will be overridden) |
| enableDefaultInitContainers | bool | `true` | enables (or disables if false) the default init containers (sysctl, volume permissions, copy plugins etc...) |
| extraConfig | object | `{}` | Append extra configuration to the elasticsearch node configuration |
| extraDeploy | list | `[]` | Array of extra objects to deploy with the release |
| extraEnvVars | list | `[]` | Array containing extra env vars to be added to all pods (evaluated as a template) |
| extraEnvVarsCM | string | `""` | ConfigMap containing extra env vars to be added to all pods (evaluated as a template) |
| extraEnvVarsSecret | string | `""` | Secret containing extra env vars to be added to all pods (evaluated as a template) |
| extraHosts | list | `[]` | A list of external hosts which are part of this cluster |
| extraVolumeMounts | list | `[]` | A list of volume mounts to be added to the pod |
| extraVolumes | list | `[]` | A list of volumes to be added to the pod |
| fullnameOverride | string | `""` | String to fully override common.names.fullname |
| global.compatibility.openshift.adaptSecurityContext | string | `"auto"` | Adapt the securityContext sections of the deployment to make them compatible with Openshift restricted-v2 SCC: remove runAsUser, runAsGroup and fsGroup and let the platform use their allowed default IDs. Possible values: auto (apply if the detected running cluster is Openshift), force (perform the adaptation always), disabled (do not perform adaptation) |
| global.defaultStorageClass | string | `""` | Global default StorageClass for Persistent Volume(s) |
| global.elasticsearch.service.name | string | `"elasticsearch"` | Elasticsearch service name to be used in the Kibana subchart (ignored if kibanaEnabled=false) |
| global.elasticsearch.service.ports.restAPI | int | `9200` | Elasticsearch service restAPI port to be used in the Kibana subchart (ignored if kibanaEnabled=false) |
| global.imagePullSecrets | list | `[]` | Global Docker registry secret names as an array |
| global.imageRegistry | string | `""` | Global Docker image registry |
| global.kibanaEnabled | bool | `false` | Whether or not to enable Kibana |
| global.security.allowInsecureImages | bool | `false` | Allows skipping image verification |
| global.storageClass | string | `""` | DEPRECATED: use global.defaultStorageClass instead |
| image.debug | bool | `false` | Enable Elasticsearch image debug mode |
| image.digest | string | `""` | Elasticsearch image digest in the way sha256:aa.... Please note this parameter, if set, will override the tag |
| image.pullPolicy | string | `"IfNotPresent"` | Elasticsearch image pull policy |
| image.pullSecrets | list | `[]` | Elasticsearch image pull secrets |
| image.registry | string | `"docker.io"` | Elasticsearch image registry |
| image.repository | string | `"bitnamilegacy/elasticsearch"` | Elasticsearch image repository |
| ingest.affinity | object | `{}` | Affinity for ingest-only pods assignment |
| ingest.annotations | object | `{}` | Annotations for the ingest statefulset |
| ingest.args | list | `[]` | Override default container args (useful when using custom images) |
| ingest.automountServiceAccountToken | bool | `false` | Mount Service Account token in pod |
| ingest.autoscaling.enabled | bool | `false` | Whether enable horizontal pod autoscale |
| ingest.autoscaling.maxReplicas | int | `11` | Configure a maximum amount of pods |
| ingest.autoscaling.minReplicas | int | `3` | Configure a minimum amount of pods |
| ingest.autoscaling.targetCPU | string | `""` | Define the CPU target to trigger the scaling actions (utilization percentage) |
| ingest.autoscaling.targetMemory | string | `""` | Define the memory target to trigger the scaling actions (utilization percentage) |
| ingest.command | list | `[]` | Override default container command (useful when using custom images) |
| ingest.containerPorts.restAPI | int | `9200` | Elasticsearch REST API port |
| ingest.containerPorts.transport | int | `9300` | Elasticsearch Transport port |
| ingest.containerSecurityContext.allowPrivilegeEscalation | bool | `false` | Set Elasticsearch ingest container's Security Context allowPrivilegeEscalation |
| ingest.containerSecurityContext.capabilities.drop | list | `["ALL"]` | List of capabilities to be dropped |
| ingest.containerSecurityContext.enabled | bool | `true` | Elasticseacrh ingest container securityContext |
| ingest.containerSecurityContext.privileged | bool | `false` | Set Elasticsearch ingest container's Security Context privileged |
| ingest.containerSecurityContext.readOnlyRootFilesystem | bool | `true` | Set container's Security Context readOnlyRootFilesystem |
| ingest.containerSecurityContext.runAsGroup | int | `1001` | Group ID for the Elasticseacrh ingest container |
| ingest.containerSecurityContext.runAsNonRoot | bool | `true` | Set Elasticsearch ingest container's Security Context runAsNonRoot |
| ingest.containerSecurityContext.runAsUser | int | `1001` | User ID for the Elasticseacrh ingest container |
| ingest.containerSecurityContext.seLinuxOptions | object | `{}` | Set SELinux options in container |
| ingest.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` | Set container's Security Context seccomp profile |
| ingest.customLivenessProbe | object | `{}` | Override default liveness probe |
| ingest.customReadinessProbe | object | `{}` | Override default readiness probe |
| ingest.customStartupProbe | object | `{}` | Override default startup probe |
| ingest.enabled | bool | `true` | Enable ingest nodes |
| ingest.extraEnvVars | list | `[]` | Array with extra environment variables to add to ingest-only nodes |
| ingest.extraEnvVarsCM | string | `""` | Name of existing ConfigMap containing extra env vars for ingest-only nodes |
| ingest.extraEnvVarsSecret | string | `""` | Name of existing Secret containing extra env vars for ingest-only nodes |
| ingest.extraRoles | list | `[]` | Append extra roles to the node role |
| ingest.extraVolumeMounts | list | `[]` | Optionally specify extra list of additional volumeMounts for the ingest-only container(s) |
| ingest.extraVolumes | list | `[]` | Optionally specify extra list of additional volumes for the ingest-only pod(s) |
| ingest.fullnameOverride | string | `""` | String to fully override elasticsearch.ingest.fullname |
| ingest.heapSize | string | `"128m"` | Elasticsearch ingest-only node heap size. |
| ingest.hostAliases | list | `[]` | ingest-only pods host aliases |
| ingest.ingress.annotations | object | `{}` | Additional annotations for the Ingress resource. To enable certificate autogeneration, place here your cert-manager annotations. |
| ingest.ingress.apiVersion | string | `""` | Force Ingress API version (automatically detected if not set) |
| ingest.ingress.enabled | bool | `false` | Enable ingress record generation for Elasticsearch |
| ingest.ingress.extraHosts | list | `[]` | An array with additional hostname(s) to be covered with the ingress record |
| ingest.ingress.extraPaths | list | `[]` | An array with additional arbitrary paths that may need to be added to the ingress under the main host |
| ingest.ingress.extraRules | list | `[]` | Additional rules to be covered with this ingress record |
| ingest.ingress.extraTls | list | `[]` | TLS configuration for additional hostname(s) to be covered with this ingress record |
| ingest.ingress.hostname | string | `"elasticsearch-ingest.local"` | Default host for the ingress record |
| ingest.ingress.ingressClassName | string | `""` | IngressClass that will be be used to implement the Ingress (Kubernetes 1.18+) |
| ingest.ingress.path | string | `"/"` | Default path for the ingress record |
| ingest.ingress.pathType | string | `"ImplementationSpecific"` | Ingress path type |
| ingest.ingress.secrets | list | `[]` | Custom TLS certificates as secrets |
| ingest.ingress.selfSigned | bool | `false` | Create a TLS secret for this ingress record using self-signed certificates generated by Helm |
| ingest.ingress.tls | bool | `false` | Enable TLS configuration for the host defined at `ingress.hostname` parameter |
| ingest.initContainers | list | `[]` | Add additional init containers to the ingest-only pod(s) |
| ingest.lifecycleHooks | object | `{}` | for the ingest-only container(s) to automate configuration before or after startup |
| ingest.livenessProbe.enabled | bool | `true` | Enable/disable the liveness probe (ingest-only nodes pod) |
| ingest.livenessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| ingest.livenessProbe.initialDelaySeconds | int | `180` | Delay before liveness probe is initiated (ingest-only nodes pod) |
| ingest.livenessProbe.periodSeconds | int | `10` | How often to perform the probe (ingest-only nodes pod) |
| ingest.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (ingest-only nodes pod) |
| ingest.livenessProbe.timeoutSeconds | int | `5` | When the probe times out (ingest-only nodes pod) |
| ingest.nameOverride | string | `""` | String to partially override elasticsearch.ingest.fullname |
| ingest.networkPolicy.allowExternal | bool | `true` | Don't require server label for connections |
| ingest.networkPolicy.allowExternalEgress | bool | `true` | Allow the pod to access any range of port and all destinations. |
| ingest.networkPolicy.enabled | bool | `true` | Specifies whether a NetworkPolicy should be created |
| ingest.networkPolicy.extraEgress | list | `[]` | Add extra ingress rules to the NetworkPolicy |
| ingest.networkPolicy.extraIngress | list | `[]` | Add extra ingress rules to the NetworkPolicy |
| ingest.networkPolicy.ingressNSMatchLabels | object | `{}` | Labels to match to allow traffic from other namespaces |
| ingest.networkPolicy.ingressNSPodMatchLabels | object | `{}` | Pod labels to match to allow traffic from other namespaces |
| ingest.nodeAffinityPreset.key | string | `""` | Node label key to match. Ignored if `ingest.affinity` is set |
| ingest.nodeAffinityPreset.type | string | `""` | Node affinity preset type. Ignored if `ingest.affinity` is set. Allowed values: `soft` or `hard` |
| ingest.nodeAffinityPreset.values | list | `[]` | Node label values to match. Ignored if `ingest.affinity` is set |
| ingest.nodeSelector | object | `{}` | Node labels for ingest-only pods assignment |
| ingest.pdb.create | bool | `true` | Enable/disable a Pod Disruption Budget creation |
| ingest.pdb.maxUnavailable | string | `""` | Maximum number/percentage of pods that may be made unavailable |
| ingest.pdb.minAvailable | string | `""` | Minimum number/percentage of pods that should remain scheduled |
| ingest.podAffinityPreset | string | `""` | Pod affinity preset. Ignored if `ingest.affinity` is set. Allowed values: `soft` or `hard` |
| ingest.podAnnotations | object | `{}` | Annotations for ingest-only pods |
| ingest.podAntiAffinityPreset | string | `""` | Pod anti-affinity preset. Ignored if `ingest.affinity` is set. Allowed values: `soft` or `hard` |
| ingest.podLabels | object | `{}` | Extra labels for ingest-only pods |
| ingest.podManagementPolicy | string | `"Parallel"` | podManagementPolicy to manage scaling operation of Elasticsearch ingest pods |
| ingest.podSecurityContext.enabled | bool | `true` | Enabled ingest-only pods' Security Context |
| ingest.podSecurityContext.fsGroup | int | `1001` | Set ingest-only pod's Security Context fsGroup |
| ingest.podSecurityContext.fsGroupChangePolicy | string | `"Always"` | Set filesystem group change policy |
| ingest.podSecurityContext.supplementalGroups | list | `[]` | Set filesystem extra groups |
| ingest.podSecurityContext.sysctls | list | `[]` | Set kernel settings using the sysctl interface |
| ingest.priorityClassName | string | `""` | ingest-only pods' priorityClassName |
| ingest.readinessProbe.enabled | bool | `true` | Enable/disable the readiness probe (ingest-only nodes pod) |
| ingest.readinessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| ingest.readinessProbe.initialDelaySeconds | int | `90` | Delay before readiness probe is initiated (ingest-only nodes pod) |
| ingest.readinessProbe.periodSeconds | int | `10` | How often to perform the probe (ingest-only nodes pod) |
| ingest.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (ingest-only nodes pod) |
| ingest.readinessProbe.timeoutSeconds | int | `5` | When the probe times out (ingest-only nodes pod) |
| ingest.replicaCount | int | `2` | Number of ingest-only replicas to deploy |
| ingest.resources | object | `{}` | Set container requests and limits for different resources like CPU or memory (essential for production workloads) |
| ingest.resourcesPreset | string | `"small"` | Set container resources according to one common preset (allowed values: none, nano, micro, small, medium, large, xlarge, 2xlarge). This is ignored if ingest.resources is set (ingest.resources is recommended for production). |
| ingest.schedulerName | string | `""` | Name of the k8s scheduler (other than default) for ingest-only pods |
| ingest.service.annotations | object | `{}` | Additional custom annotations for Elasticsearch ingest-only service |
| ingest.service.clusterIP | string | `""` | Elasticsearch ingest-only service Cluster IP |
| ingest.service.enabled | bool | `false` | Enable Ingest-only service |
| ingest.service.externalTrafficPolicy | string | `"Cluster"` | Elasticsearch ingest-only service external traffic policy |
| ingest.service.extraPorts | list | `[]` | Extra ports to expose (normally used with the `sidecar` value) |
| ingest.service.loadBalancerIP | string | `""` | Elasticsearch ingest-only service Load Balancer IP |
| ingest.service.loadBalancerSourceRanges | list | `[]` | Elasticsearch ingest-only service Load Balancer sources |
| ingest.service.nodePorts.restAPI | string | `""` | Node port for REST API |
| ingest.service.nodePorts.transport | string | `""` | Node port for REST API |
| ingest.service.ports.restAPI | int | `9200` | Elasticsearch service REST API port |
| ingest.service.ports.transport | int | `9300` | Elasticsearch service transport port |
| ingest.service.sessionAffinity | string | `"None"` | Session Affinity for Kubernetes service, can be "None" or "ClientIP" |
| ingest.service.sessionAffinityConfig | object | `{}` | Additional settings for the sessionAffinity |
| ingest.service.type | string | `"ClusterIP"` | Elasticsearch ingest-only service type |
| ingest.serviceAccount.annotations | object | `{}` | Annotations for service account. Evaluated as a template. Only used if `create` is `true`. |
| ingest.serviceAccount.automountServiceAccountToken | bool | `false` | Automount service account token for the server service account |
| ingest.serviceAccount.create | bool | `true` | Specifies whether a ServiceAccount should be created |
| ingest.serviceAccount.name | string | `""` | Name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| ingest.servicenameOverride | string | `""` | String to fully override ingest.master.servicename |
| ingest.sidecars | list | `[]` | Add additional sidecar containers to the ingest-only pod(s) |
| ingest.startupProbe.enabled | bool | `false` | Enable/disable the startup probe (ingest-only nodes pod) |
| ingest.startupProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| ingest.startupProbe.initialDelaySeconds | int | `90` | Delay before startup probe is initiated (ingest-only nodes pod) |
| ingest.startupProbe.periodSeconds | int | `10` | How often to perform the probe (ingest-only nodes pod) |
| ingest.startupProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (ingest-only nodes pod) |
| ingest.startupProbe.timeoutSeconds | int | `5` | When the probe times out (ingest-only nodes pod) |
| ingest.terminationGracePeriodSeconds | string | `""` | In seconds, time the given to the Elasticsearch ingest pod needs to terminate gracefully |
| ingest.tolerations | list | `[]` | Tolerations for ingest-only pods assignment |
| ingest.topologySpreadConstraints | list | `[]` | Topology Spread Constraints for pod assignment spread across your cluster among failure-domains. Evaluated as a template |
| ingest.updateStrategy.type | string | `"RollingUpdate"` | Ingest-only nodes statefulset stategy type |
| ingress.annotations | object | `{}` | Additional annotations for the Ingress resource. To enable certificate autogeneration, place here your cert-manager annotations. |
| ingress.apiVersion | string | `""` | Force Ingress API version (automatically detected if not set) |
| ingress.enabled | bool | `false` | Enable ingress record generation for Elasticsearch |
| ingress.extraHosts | list | `[]` | An array with additional hostname(s) to be covered with the ingress record |
| ingress.extraPaths | list | `[]` | An array with additional arbitrary paths that may need to be added to the ingress under the main host |
| ingress.extraRules | list | `[]` | Additional rules to be covered with this ingress record |
| ingress.extraTls | list | `[]` | TLS configuration for additional hostname(s) to be covered with this ingress record |
| ingress.hostname | string | `"elasticsearch.local"` | Default host for the ingress record |
| ingress.ingressClassName | string | `""` | IngressClass that will be be used to implement the Ingress (Kubernetes 1.18+) |
| ingress.path | string | `"/"` | Default path for the ingress record |
| ingress.pathType | string | `"ImplementationSpecific"` | Ingress path type |
| ingress.secrets | list | `[]` | Custom TLS certificates as secrets |
| ingress.selfSigned | bool | `false` | Create a TLS secret for this ingress record using self-signed certificates generated by Helm |
| ingress.tls | bool | `false` | Enable TLS configuration for the host defined at `ingress.hostname` parameter |
| initContainers | list | `[]` | Add additional init containers to the all elasticsearch node pod(s) |
| initScripts | object | `{}` | Dictionary of init scripts. Evaluated as a template. |
| initScriptsCM | string | `""` | ConfigMap with the init scripts. Evaluated as a template. |
| initScriptsSecret | string | `""` | Secret containing `/docker-entrypoint-initdb.d` scripts to be executed at initialization time that contain sensitive data. Evaluated as a template. |
| kibana.elasticsearch.hosts | list | `["{{ include \"elasticsearch.service.name\" . }}"]` | Array containing hostnames for the ES instances. Used to generate the URL |
| kibana.elasticsearch.port | string | `"{{ include \"elasticsearch.service.ports.restAPI\" . }}"` | Port to connect Kibana and ES instance. Used to generate the URL |
| kubeVersion | string | `""` | Override Kubernetes version |
| master.affinity | object | `{}` | Affinity for master-elegible pods assignment |
| master.annotations | object | `{}` | Annotations for the master statefulset |
| master.args | list | `[]` | Override default container args (useful when using custom images) |
| master.automountServiceAccountToken | bool | `false` | Mount Service Account token in pod |
| master.autoscaling.enabled | bool | `false` | Whether enable horizontal pod autoscale |
| master.autoscaling.maxReplicas | int | `11` | Configure a maximum amount of pods |
| master.autoscaling.minReplicas | int | `3` | Configure a minimum amount of pods |
| master.autoscaling.targetCPU | string | `""` | Define the CPU target to trigger the scaling actions (utilization percentage) |
| master.autoscaling.targetMemory | string | `""` | Define the memory target to trigger the scaling actions (utilization percentage) |
| master.command | list | `[]` | Override default container command (useful when using custom images) |
| master.containerSecurityContext.allowPrivilegeEscalation | bool | `false` | Set Elasticsearch master-eligible container's Security Context allowPrivilegeEscalation |
| master.containerSecurityContext.capabilities.drop | list | `["ALL"]` | List of capabilities to be dropped |
| master.containerSecurityContext.enabled | bool | `true` | Elasticseacrh master-eligible container securityContext |
| master.containerSecurityContext.privileged | bool | `false` | Set Elasticsearch master-eligible container's Security Context privileged |
| master.containerSecurityContext.readOnlyRootFilesystem | bool | `true` | Set container's Security Context readOnlyRootFilesystem |
| master.containerSecurityContext.runAsGroup | int | `1001` | Group ID for the Elasticseacrh master-eligible container |
| master.containerSecurityContext.runAsNonRoot | bool | `true` | Set Elasticsearch master-eligible container's Security Context runAsNonRoot |
| master.containerSecurityContext.runAsUser | int | `1001` | User ID for the Elasticseacrh master-eligible container |
| master.containerSecurityContext.seLinuxOptions | object | `{}` | Set SELinux options in container |
| master.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` | Set container's Security Context seccomp profile |
| master.customLivenessProbe | object | `{}` | Override default liveness probe |
| master.customReadinessProbe | object | `{}` | Override default readiness probe |
| master.customStartupProbe | object | `{}` | Override default startup probe |
| master.extraEnvVars | list | `[]` | Array with extra environment variables to add to master-elegible nodes |
| master.extraEnvVarsCM | string | `""` | Name of existing ConfigMap containing extra env vars for master-elegible nodes |
| master.extraEnvVarsSecret | string | `""` | Name of existing Secret containing extra env vars for master-elegible nodes |
| master.extraRoles | list | `[]` | Append extra roles to the node role |
| master.extraVolumeMounts | list | `[]` | Optionally specify extra list of additional volumeMounts for the master-elegible container(s) |
| master.extraVolumes | list | `[]` | Optionally specify extra list of additional volumes for the master-elegible pod(s) |
| master.fullnameOverride | string | `""` | String to fully override elasticsearch.master.fullname |
| master.heapSize | string | `"128m"` | Elasticsearch master-eligible node heap size. |
| master.hostAliases | list | `[]` | master-elegible pods host aliases |
| master.initContainers | list | `[]` | Add additional init containers to the master-elegible pod(s) |
| master.lifecycleHooks | object | `{}` | for the master-elegible container(s) to automate configuration before or after startup |
| master.livenessProbe.enabled | bool | `true` | Enable/disable the liveness probe (master-eligible nodes pod) |
| master.livenessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| master.livenessProbe.initialDelaySeconds | int | `180` | Delay before liveness probe is initiated (master-eligible nodes pod) |
| master.livenessProbe.periodSeconds | int | `10` | How often to perform the probe (master-eligible nodes pod) |
| master.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (master-eligible nodes pod) |
| master.livenessProbe.timeoutSeconds | int | `5` | When the probe times out (master-eligible nodes pod) |
| master.masterOnly | bool | `true` | Deploy the Elasticsearch master-elegible nodes as master-only nodes. Recommended for high-demand deployments. |
| master.nameOverride | string | `""` | String to partially override elasticsearch.master.fullname |
| master.networkPolicy.allowExternal | bool | `true` | Don't require server label for connections |
| master.networkPolicy.allowExternalEgress | bool | `true` | Allow the pod to access any range of port and all destinations. |
| master.networkPolicy.enabled | bool | `true` | Specifies whether a NetworkPolicy should be created |
| master.networkPolicy.extraEgress | list | `[]` | Add extra ingress rules to the NetworkPolicy |
| master.networkPolicy.extraIngress | list | `[]` | Add extra ingress rules to the NetworkPolicy |
| master.networkPolicy.ingressNSMatchLabels | object | `{}` | Labels to match to allow traffic from other namespaces |
| master.networkPolicy.ingressNSPodMatchLabels | object | `{}` | Pod labels to match to allow traffic from other namespaces |
| master.nodeAffinityPreset.key | string | `""` | Node label key to match. Ignored if `master.affinity` is set |
| master.nodeAffinityPreset.type | string | `""` | Node affinity preset type. Ignored if `master.affinity` is set. Allowed values: `soft` or `hard` |
| master.nodeAffinityPreset.values | list | `[]` | Node label values to match. Ignored if `master.affinity` is set |
| master.nodeSelector | object | `{}` | Node labels for master-elegible pods assignment |
| master.pdb.create | bool | `true` | Enable/disable a Pod Disruption Budget creation |
| master.pdb.maxUnavailable | string | `""` | Maximum number/percentage of pods that may be made unavailable |
| master.pdb.minAvailable | string | `""` | Minimum number/percentage of pods that should remain scheduled |
| master.persistence.accessModes | list | `["ReadWriteOnce"]` | Persistent Volume Access Modes |
| master.persistence.annotations | object | `{}` | Persistent Volume Claim annotations |
| master.persistence.enabled | bool | `true` | Enable persistence using a `PersistentVolumeClaim` |
| master.persistence.existingClaim | string | `""` | Existing Persistent Volume Claim |
| master.persistence.existingVolume | string | `""` | Existing Persistent Volume for use as volume match label selector to the `volumeClaimTemplate`. Ignored when `master.persistence.selector` is set. |
| master.persistence.selector | object | `{}` | Configure custom selector for existing Persistent Volume. Overwrites `master.persistence.existingVolume` |
| master.persistence.size | string | `"8Gi"` | Persistent Volume Size |
| master.persistence.storageClass | string | `""` | Persistent Volume Storage Class |
| master.persistentVolumeClaimRetentionPolicy.enabled | bool | `false` | Enable Persistent volume retention policy for Master StatefulSet |
| master.persistentVolumeClaimRetentionPolicy.whenDeleted | string | `"Retain"` | Volume retention behavior that applies when the StatefulSet is deleted |
| master.persistentVolumeClaimRetentionPolicy.whenScaled | string | `"Retain"` | Volume retention behavior when the replica count of the StatefulSet is reduced |
| master.podAffinityPreset | string | `""` | Pod affinity preset. Ignored if `master.affinity` is set. Allowed values: `soft` or `hard` |
| master.podAnnotations | object | `{}` | Annotations for master-elegible pods |
| master.podAntiAffinityPreset | string | `""` | Pod anti-affinity preset. Ignored if `master.affinity` is set. Allowed values: `soft` or `hard` |
| master.podLabels | object | `{}` | Extra labels for master-elegible pods |
| master.podManagementPolicy | string | `"Parallel"` | podManagementPolicy to manage scaling operation of Elasticsearch master pods |
| master.podSecurityContext.enabled | bool | `true` | Enabled master-elegible pods' Security Context |
| master.podSecurityContext.fsGroup | int | `1001` | Set master-elegible pod's Security Context fsGroup |
| master.podSecurityContext.fsGroupChangePolicy | string | `"Always"` | Set filesystem group change policy |
| master.podSecurityContext.supplementalGroups | list | `[]` | Set filesystem extra groups |
| master.podSecurityContext.sysctls | list | `[]` | Set kernel settings using the sysctl interface |
| master.priorityClassName | string | `""` | master-elegible pods' priorityClassName |
| master.readinessProbe.enabled | bool | `true` | Enable/disable the readiness probe (master-eligible nodes pod) |
| master.readinessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| master.readinessProbe.initialDelaySeconds | int | `90` | Delay before readiness probe is initiated (master-eligible nodes pod) |
| master.readinessProbe.periodSeconds | int | `10` | How often to perform the probe (master-eligible nodes pod) |
| master.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (master-eligible nodes pod) |
| master.readinessProbe.timeoutSeconds | int | `5` | When the probe times out (master-eligible nodes pod) |
| master.replicaCount | int | `2` | Number of master-elegible replicas to deploy |
| master.resources | object | `{}` | Set container requests and limits for different resources like CPU or memory (essential for production workloads) |
| master.resourcesPreset | string | `"small"` | Set container resources according to one common preset (allowed values: none, nano, micro, small, medium, large, xlarge, 2xlarge). This is ignored if master.resources is set (master.resources is recommended for production). |
| master.schedulerName | string | `""` | Name of the k8s scheduler (other than default) for master-elegible pods |
| master.serviceAccount.annotations | object | `{}` | Annotations for service account. Evaluated as a template. Only used if `create` is `true`. |
| master.serviceAccount.automountServiceAccountToken | bool | `false` | Automount service account token for the server service account |
| master.serviceAccount.create | bool | `true` | Specifies whether a ServiceAccount should be created |
| master.serviceAccount.name | string | `""` | Name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| master.servicenameOverride | string | `""` | String to fully override elasticsearch.master.servicename |
| master.sidecars | list | `[]` | Add additional sidecar containers to the master-elegible pod(s) |
| master.startupProbe.enabled | bool | `false` | Enable/disable the startup probe (master nodes pod) |
| master.startupProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| master.startupProbe.initialDelaySeconds | int | `90` | Delay before startup probe is initiated (master nodes pod) |
| master.startupProbe.periodSeconds | int | `10` | How often to perform the probe (master nodes pod) |
| master.startupProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (master nodes pod) |
| master.startupProbe.timeoutSeconds | int | `5` | When the probe times out (master nodes pod) |
| master.terminationGracePeriodSeconds | string | `""` | In seconds, time the given to the Elasticsearch Master pod needs to terminate gracefully |
| master.tolerations | list | `[]` | Tolerations for master-elegible pods assignment |
| master.topologySpreadConstraints | list | `[]` | Topology Spread Constraints for pod assignment spread across your cluster among failure-domains. Evaluated as a template |
| master.updateStrategy.type | string | `"RollingUpdate"` | Master-elegible nodes statefulset stategy type |
| metrics.affinity | object | `{}` | Metrics Affinity for pod assignment |
| metrics.annotations | object | `{"helm.sh/hook":"post-install,post-upgrade","helm.sh/hook-weight":"5"}` | Annotations for metrics |
| metrics.args | list | `[]` | Override default container args (useful when using custom images) |
| metrics.automountServiceAccountToken | bool | `false` | Mount Service Account token in pod |
| metrics.command | list | `[]` | Override default container command (useful when using custom images) |
| metrics.containerPorts.http | int | `9114` | Metrics HTTP port |
| metrics.containerSecurityContext.allowPrivilegeEscalation | bool | `false` | Set Elasticsearch exporter container's Security Context allowPrivilegeEscalation |
| metrics.containerSecurityContext.capabilities.drop | list | `["ALL"]` | List of capabilities to be dropped |
| metrics.containerSecurityContext.enabled | bool | `true` | Elasticseacrh exporter container securityContext |
| metrics.containerSecurityContext.privileged | bool | `false` | Set Elasticsearch exporter container's Security Context privileged |
| metrics.containerSecurityContext.readOnlyRootFilesystem | bool | `true` | Set container's Security Context readOnlyRootFilesystem |
| metrics.containerSecurityContext.runAsGroup | int | `1001` | Group ID for the Elasticseacrh exporter container |
| metrics.containerSecurityContext.runAsNonRoot | bool | `true` | Set Elasticsearch exporter container's Security Context runAsNonRoot |
| metrics.containerSecurityContext.runAsUser | int | `1001` | User ID for the Elasticseacrh exporter container |
| metrics.containerSecurityContext.seLinuxOptions | object | `{}` | Set SELinux options in container |
| metrics.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` | Set container's Security Context seccomp profile |
| metrics.customLivenessProbe | object | `{}` | Custom liveness probe for the Web component |
| metrics.customReadinessProbe | object | `{}` | Custom readiness probe for the Web component |
| metrics.customStartupProbe | object | `{}` | Custom liveness probe for the Web component |
| metrics.enabled | bool | `false` | Enable prometheus exporter |
| metrics.extraArgs | list | `[]` | Extra arguments to add to the default exporter command |
| metrics.extraEnvVars | list | `[]` | Array with extra environment variables to add to Elasticsearch metrics exporter nodes |
| metrics.extraEnvVarsCM | string | `""` | Name of existing ConfigMap containing extra env vars for Elasticsearch metrics exporter nodes |
| metrics.extraEnvVarsSecret | string | `""` | Name of existing Secret containing extra env vars for Elasticsearch metrics exporter nodes |
| metrics.extraVolumeMounts | list | `[]` | Optionally specify extra list of additional volumeMounts for the Elasticsearch metrics exporter container(s) |
| metrics.extraVolumes | list | `[]` | Optionally specify extra list of additional volumes for the Elasticsearch metrics exporter pod(s) |
| metrics.fullnameOverride | string | `""` | String to fully override common.names.fullname |
| metrics.hostAliases | list | `[]` | Add deployment host aliases |
| metrics.image.digest | string | `""` | Metrics exporter image digest in the way sha256:aa.... Please note this parameter, if set, will override the tag |
| metrics.image.pullPolicy | string | `"IfNotPresent"` | Metrics exporter image pull policy |
| metrics.image.pullSecrets | list | `[]` | Metrics exporter image pull secrets |
| metrics.image.registry | string | `"docker.io"` | Metrics exporter image registry |
| metrics.image.repository | string | `"bitnamilegacy/elasticsearch-exporter"` | Metrics exporter image repository |
| metrics.initContainers | list | `[]` | Add additional init containers to the Elasticsearch metrics exporter pod(s) |
| metrics.livenessProbe.enabled | bool | `true` | Enable/disable the liveness probe (metrics pod) |
| metrics.livenessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| metrics.livenessProbe.initialDelaySeconds | int | `60` | Delay before liveness probe is initiated (metrics pod) |
| metrics.livenessProbe.periodSeconds | int | `10` | How often to perform the probe (metrics pod) |
| metrics.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (metrics pod) |
| metrics.livenessProbe.timeoutSeconds | int | `5` | When the probe times out (metrics pod) |
| metrics.nameOverride | string | `""` | Metrics pod name |
| metrics.networkPolicy.allowExternal | bool | `true` | Don't require server label for connections |
| metrics.networkPolicy.allowExternalEgress | bool | `true` | Allow the pod to access any range of port and all destinations. |
| metrics.networkPolicy.enabled | bool | `true` | Specifies whether a NetworkPolicy should be created |
| metrics.networkPolicy.extraEgress | list | `[]` | Add extra ingress rules to the NetworkPolicy |
| metrics.networkPolicy.extraIngress | list | `[]` | Add extra ingress rules to the NetworkPolicy |
| metrics.networkPolicy.ingressNSMatchLabels | object | `{}` | Labels to match to allow traffic from other namespaces |
| metrics.networkPolicy.ingressNSPodMatchLabels | object | `{}` | Pod labels to match to allow traffic from other namespaces |
| metrics.nodeAffinityPreset.key | string | `""` | Metrics Node label key to match Ignored if `affinity` is set. |
| metrics.nodeAffinityPreset.type | string | `""` | Metrics Node affinity preset type. Ignored if `affinity` is set. Allowed values: `soft` or `hard` |
| metrics.nodeAffinityPreset.values | list | `[]` | Metrics Node label values to match. Ignored if `affinity` is set. |
| metrics.nodeSelector | object | `{}` | Metrics Node labels for pod assignment |
| metrics.podAffinityPreset | string | `""` | Metrics Pod affinity preset. Ignored if `affinity` is set. Allowed values: `soft` or `hard` |
| metrics.podAnnotations | object | `{"prometheus.io/port":"9114","prometheus.io/scrape":"true"}` | Metrics exporter pod Annotation and Labels |
| metrics.podAntiAffinityPreset | string | `""` | Metrics Pod anti-affinity preset. Ignored if `affinity` is set. Allowed values: `soft` or `hard` |
| metrics.podLabels | object | `{}` | Extra labels to add to Pod |
| metrics.podSecurityContext.enabled | bool | `true` | Enabled Elasticsearch metrics exporter pods' Security Context |
| metrics.podSecurityContext.fsGroup | int | `1001` | Set Elasticsearch metrics exporter pod's Security Context fsGroup |
| metrics.podSecurityContext.fsGroupChangePolicy | string | `"Always"` | Set filesystem group change policy |
| metrics.podSecurityContext.supplementalGroups | list | `[]` | Set filesystem extra groups |
| metrics.podSecurityContext.sysctls | list | `[]` | Set kernel settings using the sysctl interface |
| metrics.priorityClassName | string | `""` | Elasticsearch metrics exporter pods' priorityClassName |
| metrics.prometheusRule.additionalLabels | object | `{}` | Additional labels that can be used so PrometheusRule will be discovered by Prometheus |
| metrics.prometheusRule.enabled | bool | `false` | Creates a Prometheus Operator PrometheusRule (also requires `metrics.enabled` to be `true` and `metrics.prometheusRule.rules`) |
| metrics.prometheusRule.namespace | string | `""` | Namespace for the PrometheusRule Resource (defaults to the Release Namespace) |
| metrics.prometheusRule.rules | list | `[]` | Prometheus Rule definitions |
| metrics.readinessProbe.enabled | bool | `true` | Enable/disable the readiness probe (metrics pod) |
| metrics.readinessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| metrics.readinessProbe.initialDelaySeconds | int | `5` | Delay before readiness probe is initiated (metrics pod) |
| metrics.readinessProbe.periodSeconds | int | `10` | How often to perform the probe (metrics pod) |
| metrics.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (metrics pod) |
| metrics.readinessProbe.timeoutSeconds | int | `1` | When the probe times out (metrics pod) |
| metrics.resources | object | `{}` | Set container requests and limits for different resources like CPU or memory (essential for production workloads) |
| metrics.resourcesPreset | string | `"nano"` | Set container resources according to one common preset (allowed values: none, nano, micro, small, medium, large, xlarge, 2xlarge). This is ignored if metrics.resources is set (metrics.resources is recommended for production). |
| metrics.schedulerName | string | `""` | Name of the k8s scheduler (other than default) |
| metrics.service.annotations | object | `{"prometheus.io/port":"9114","prometheus.io/scrape":"true"}` | Provide any additional annotations which may be required. |
| metrics.service.port | int | `9114` | Metrics exporter endpoint service port |
| metrics.service.type | string | `"ClusterIP"` | Metrics exporter endpoint service type |
| metrics.serviceAccount.annotations | object | `{}` | Annotations for service account. Evaluated as a template. Only used if `create` is `true`. |
| metrics.serviceAccount.automountServiceAccountToken | bool | `false` | Automount service account token for the server service account |
| metrics.serviceAccount.create | bool | `true` | Specifies whether a ServiceAccount should be created |
| metrics.serviceAccount.name | string | `""` | Name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| metrics.serviceMonitor.enabled | bool | `false` | Create ServiceMonitor Resource for scraping metrics using PrometheusOperator |
| metrics.serviceMonitor.honorLabels | bool | `false` | honorLabels chooses the metric's labels on collisions with target labels |
| metrics.serviceMonitor.interval | string | `""` | Interval at which metrics should be scraped |
| metrics.serviceMonitor.jobLabel | string | `""` | The name of the label on the target service to use as the job name in prometheus. |
| metrics.serviceMonitor.labels | object | `{}` | Extra labels for the ServiceMonitor |
| metrics.serviceMonitor.metricRelabelings | list | `[]` | MetricRelabelConfigs to apply to samples before ingestion |
| metrics.serviceMonitor.namespace | string | `""` | Namespace which Prometheus is running in |
| metrics.serviceMonitor.relabelings | list | `[]` | RelabelConfigs to apply to samples before scraping |
| metrics.serviceMonitor.scrapeTimeout | string | `""` | Timeout after which the scrape is ended |
| metrics.serviceMonitor.selector | object | `{}` | ServiceMonitor selector labels |
| metrics.sidecars | list | `[]` | Add additional sidecar containers to the Elasticsearch metrics exporter pod(s) |
| metrics.startupProbe.enabled | bool | `false` | Enable/disable the startup probe (metrics pod) |
| metrics.startupProbe.failureThreshold | int | `5` | Minimum consecutive failures for the probe to be considered failed after having succeeded |
| metrics.startupProbe.initialDelaySeconds | int | `5` | Delay before startup probe is initiated (metrics pod) |
| metrics.startupProbe.periodSeconds | int | `10` | How often to perform the probe (metrics pod) |
| metrics.startupProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed (metrics pod) |
| metrics.startupProbe.timeoutSeconds | int | `1` | When the probe times out (metrics pod) |
| metrics.tolerations | list | `[]` | Metrics Tolerations for pod assignment |
| metrics.topologySpreadConstraints | list | `[]` | Topology Spread Constraints for pod assignment spread across your cluster among failure-domains. Evaluated as a template |
| nameOverride | string | `""` | String to partially override common.names.fullname |
| namespaceOverride | string | `""` | String to fully override common.names.namespace |
| plugins | string | `""` | Comma, semi-colon or space separated list of plugins to install at initialization |
| security.elasticPassword | string | `""` | Password for 'elastic' user |
| security.enabled | bool | `false` | Enable X-Pack Security settings |
| security.existingSecret | string | `""` | Name of the existing secret containing the Elasticsearch password (expected key: `elasticsearch-password`) |
| security.fipsMode | bool | `false` | Configure elasticsearch with FIPS 140 compliant mode |
| security.tls.autoGenerated | bool | `false` | Create self-signed TLS certificates. |
| security.tls.coordinating.existingSecret | string | `""` | Existing secret containing the certificates for the coordinating nodes |
| security.tls.data.existingSecret | string | `""` | Existing secret containing the certificates for the data nodes |
| security.tls.ingest.existingSecret | string | `""` | Existing secret containing the certificates for the ingest nodes |
| security.tls.keyPassword | string | `""` | Password to access the PEM key when they are password-protected. |
| security.tls.keystoreFilename | string | `"elasticsearch.keystore.jks"` | Name of the keystore file |
| security.tls.keystorePassword | string | `""` | Password to access the JKS/PKCS12 keystore or PEM key when they are password-protected. |
| security.tls.master.existingSecret | string | `""` | Existing secret containing the certificates for the master nodes |
| security.tls.passwordsSecret | string | `""` | Existing secret containing the Keystore and Truststore passwords, or key password if PEM certs are used |
| security.tls.restEncryption | bool | `true` | Enable SSL/TLS encryption for Elasticsearch REST API. |
| security.tls.secretKey | string | `""` | Name of the secret key containing the PEM key password |
| security.tls.secretKeystoreKey | string | `""` | Name of the secret key containing the Keystore password |
| security.tls.secretTruststoreKey | string | `""` | Name of the secret key containing the Truststore password |
| security.tls.truststoreFilename | string | `"elasticsearch.truststore.jks"` | Name of the truststore |
| security.tls.truststorePassword | string | `""` | Password to access the JKS/PKCS12 truststore when they are password-protected. |
| security.tls.usePemCerts | bool | `false` | Use this variable if your secrets contain PEM certificates instead of JKS/PKCS12 |
| security.tls.verificationMode | string | `"full"` | Verification mode for SSL communications. |
| service.annotations | object | `{}` | Additional custom annotations for Elasticsearch service |
| service.clusterIP | string | `""` | Elasticsearch service Cluster IP |
| service.externalTrafficPolicy | string | `"Cluster"` | Elasticsearch service external traffic policy |
| service.extraPorts | list | `[]` | Extra ports to expose in Elasticsearch service (normally used with the `sidecars` value) |
| service.loadBalancerIP | string | `""` | Elasticsearch service Load Balancer IP |
| service.loadBalancerSourceRanges | list | `[]` | Elasticsearch service Load Balancer sources |
| service.nodePorts.restAPI | string | `""` | Node port for REST API |
| service.nodePorts.transport | string | `""` | Node port for REST API |
| service.ports.restAPI | int | `9200` | Elasticsearch service REST API port |
| service.ports.transport | int | `9300` | Elasticsearch service transport port |
| service.sessionAffinity | string | `"None"` | Session Affinity for Kubernetes service, can be "None" or "ClientIP" |
| service.sessionAffinityConfig | object | `{}` | Additional settings for the sessionAffinity |
| service.type | string | `"ClusterIP"` | Elasticsearch service type |
| sidecars | list | `[]` | Add additional sidecar containers to the all elasticsearch node pod(s) |
| snapshotRepoPath | string | `""` | File System snapshot repository path |
| sysctlImage.digest | string | `""` | Kernel settings modifier image digest in the way sha256:aa.... Please note this parameter, if set, will override the tag |
| sysctlImage.enabled | bool | `true` | Enable kernel settings modifier image |
| sysctlImage.pullPolicy | string | `"IfNotPresent"` | Kernel settings modifier image pull policy |
| sysctlImage.pullSecrets | list | `[]` | Kernel settings modifier image pull secrets |
| sysctlImage.registry | string | `"docker.io"` | Kernel settings modifier image registry |
| sysctlImage.repository | string | `"bitnamilegacy/os-shell"` | Kernel settings modifier image repository |
| sysctlImage.resources | object | `{}` | Set container requests and limits for different resources like CPU or memory (essential for production workloads) |
| sysctlImage.resourcesPreset | string | `"nano"` | Set container resources according to one common preset (allowed values: none, nano, micro, small, medium, large, xlarge, 2xlarge). This is ignored if sysctlImage.resources is set (sysctlImage.resources is recommended for production). |
| useIstioLabels | bool | `true` | Use this variable to add Istio labels to all pods |
| usePasswordFiles | bool | `true` | Mount credentials as files instead of using environment variables |
| volumePermissions.enabled | bool | `false` | Enable init container that changes volume permissions in the data directory (for cases where the default k8s `runAsUser` and `fsUser` values do not work) |
| volumePermissions.image.digest | string | `""` | Init container volume-permissions image digest in the way sha256:aa.... Please note this parameter, if set, will override the tag |
| volumePermissions.image.pullPolicy | string | `"IfNotPresent"` | Init container volume-permissions image pull policy |
| volumePermissions.image.pullSecrets | list | `[]` | Init container volume-permissions image pull secrets |
| volumePermissions.image.registry | string | `"docker.io"` | Init container volume-permissions image registry |
| volumePermissions.image.repository | string | `"bitnamilegacy/os-shell"` | Init container volume-permissions image name |
| volumePermissions.resources | object | `{}` | Set container requests and limits for different resources like CPU or memory (essential for production workloads) |
| volumePermissions.resourcesPreset | string | `"nano"` | Set container resources according to one common preset (allowed values: none, nano, micro, small, medium, large, xlarge, 2xlarge). This is ignored if volumePermissions.resources is set (volumePermissions.resources is recommended for production). |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)

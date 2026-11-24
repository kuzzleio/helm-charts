{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "kuzzle.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "kuzzle.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "kuzzle.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "kuzzle.labels" -}}
helm.sh/chart: {{ include "kuzzle.chart" . }}
{{ include "kuzzle.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "kuzzle.selectorLabels" -}}
app.kubernetes.io/name: {{ include "kuzzle.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
mTLS resource names: the given name, or one derived from the fullname.
`helm upgrade --reuse-values` from a release older than 1.16.0 has no `mtls`
key at all: read it through dicts so it renders as disabled.
*/}}
{{- define "kuzzle.mtls.tlsOptionName" -}}
{{- $tlsOption := dig "tlsOption" dict (.Values.mtls | default dict) -}}
{{- if $tlsOption.name -}}
{{- $tlsOption.name -}}
{{- else if eq (toString (dig "create" true $tlsOption)) "false" -}}
{{- fail "mtls.tlsOption.name is required when mtls.tlsOption.create is false" -}}
{{- else -}}
{{- printf "%s-mtls" (include "kuzzle.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "kuzzle.mtls.stripName" -}}
{{- include "kuzzle.mtls.middlewareName" (list . "strip" "strip-client-cert") -}}
{{- end -}}

{{- define "kuzzle.mtls.forwardName" -}}
{{- include "kuzzle.mtls.middlewareName" (list . "forward" "forward-client-cert") -}}
{{- end -}}

{{/*
Args: root context, middleware key under `mtls.middlewares`, default suffix.
*/}}
{{- define "kuzzle.mtls.middlewareName" -}}
{{- $root := index . 0 -}}
{{- $key := index . 1 -}}
{{- $middlewares := dig "middlewares" dict ($root.Values.mtls | default dict) -}}
{{- $name := dig $key "name" "" $middlewares -}}
{{- if $name -}}
{{- $name -}}
{{- else if eq (toString (dig "create" true $middlewares)) "false" -}}
{{- fail (printf "mtls.middlewares.%s.name is required when mtls.middlewares.create is false" $key) -}}
{{- else -}}
{{- printf "%s-%s" (include "kuzzle.fullname" $root) (index . 2) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
Traefik reference to a CRD in the release namespace: `<ns>-<name>@kubernetescrd`.
*/}}
{{- define "kuzzle.mtls.crdRef" -}}
{{- printf "%s-%s@kubernetescrd" (index . 0).Release.Namespace (index . 1) -}}
{{- end -}}

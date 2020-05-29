{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "sumologic.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "sumologic.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{/*
Create default fully qualified labels.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "sumologic.labels.app" -}}
{{- template "sumologic.fullname" . }}
{{- end -}}

{{- define "sumologic.labels.app.roles.clusterrole" -}}
{{- template "sumologic.fullname" . }}
{{- end -}}

{{- define "sumologic.labels.app.roles.clusterrolebinding" -}}
{{- template "sumologic.fullname" . }}
{{- end -}}

{{- define "sumologic.labels.app.roles.serviceaccount" -}}
{{- template "sumologic.fullname" . }}
{{- end -}}

{{- define "sumologic.labels.app.logs" -}}
{{- template "sumologic.fullname" . }}-fluentd-logs
{{- end -}}

{{- define "sumologic.labels.app.logs.pod" -}}
{{- template "sumologic.labels.app.logs" . }}
{{- end -}}

{{- define "sumologic.labels.app.logs.service" -}}
{{- template "sumologic.labels.app.logs" . }}
{{- end -}}

{{- define "sumologic.labels.app.logs.service-headless" -}}
{{- template "sumologic.labels.app.logs.service" . }}-headless
{{- end -}}

{{- define "sumologic.labels.app.logs.configmap" -}}
{{- template "sumologic.labels.app.logs" . }}
{{- end -}}

{{- define "sumologic.labels.app.logs.statefulset" -}}
{{- template "sumologic.labels.app.logs" . }}
{{- end -}}

{{- define "sumologic.labels.app.logs.hpa" -}}
{{- template "sumologic.labels.app.logs" . }}
{{- end -}}

{{- define "sumologic.labels.app.metrics" -}}
{{- template "sumologic.fullname" . }}-fluentd-metrics
{{- end -}}

{{- define "sumologic.labels.app.metrics.pod" -}}
{{- template "sumologic.labels.app.metrics" . }}
{{- end -}}

{{- define "sumologic.labels.app.metrics.service" -}}
{{- template "sumologic.labels.app.metrics" . }}
{{- end -}}

{{- define "sumologic.labels.app.metrics.service-headless" -}}
{{- template "sumologic.labels.app.metrics.service" . }}-headless
{{- end -}}

{{- define "sumologic.labels.app.metrics.configmap" -}}
{{- template "sumologic.labels.app.metrics" . }}
{{- end -}}

{{- define "sumologic.labels.app.metrics.statefulset" -}}
{{- template "sumologic.labels.app.metrics" . }}
{{- end -}}

{{- define "sumologic.labels.app.metrics.hpa" -}}
{{- template "sumologic.labels.app.metrics" . }}
{{- end -}}

{{- define "sumologic.labels.app.events" -}}
{{- template "sumologic.fullname" . }}-fluentd-events
{{- end -}}

{{- define "sumologic.labels.app.events.pod" -}}
{{- template "sumologic.labels.app.events" . }}
{{- end -}}

{{- define "sumologic.labels.app.events.service" -}}
{{- template "sumologic.labels.app.events" . }}
{{- end -}}

{{- define "sumologic.labels.app.events.service-headless" -}}
{{- template "sumologic.labels.app.events.service" . }}-headless
{{- end -}}

{{- define "sumologic.labels.app.events.configmap" -}}
{{- template "sumologic.labels.app.events" . }}
{{- end -}}

{{- define "sumologic.labels.app.events.statefulset" -}}
{{- template "sumologic.labels.app.events" . }}
{{- end -}}

{{- define "sumologic.labels.app.otelcol" -}}
{{- template "sumologic.fullname" . }}-otelcol
{{- end -}}

{{- define "sumologic.labels.app.otelcol.pod" -}}
{{- template "sumologic.labels.app.otelcol" . }}
{{- end -}}

{{- define "sumologic.labels.app.otelcol.service" -}}
{{- template "sumologic.labels.app.otelcol" . }}
{{- end -}}

{{- define "sumologic.labels.app.otelcol.configmap" -}}
{{- template "sumologic.labels.app.metrics" . }}
{{- end -}}

{{- define "sumologic.labels.app.otelcol.deployment" -}}
{{- template "sumologic.labels.app.otelcol" . }}
{{- end -}}

{{- define "sumologic.labels.app.setup" -}}
{{- template "sumologic.labels.app" . }}
{{- end -}}

{{- define "sumologic.labels.app.setup.job" -}}
{{- template "sumologic.labels.app.setup" . }}
{{- end -}}

{{- define "sumologic.labels.app.setup.configmap" -}}
{{- template "sumologic.labels.app.setup" . }}
{{- end -}}

{{- define "sumologic.labels.app.setup.roles.clusterrole" -}}
{{- template "sumologic.labels.app.setup" . }}
{{- end -}}

{{- define "sumologic.labels.app.setup.roles.clusterrolebinding" -}}
{{- template "sumologic.labels.app.setup" . }}
{{- end -}}

{{- define "sumologic.labels.app.setup.roles.serviceaccount" -}}
{{- template "sumologic.labels.app.setup" . }}
{{- end -}}

{{- define "sumologic.metadata.name.roles.clusterrole" -}}
{{- template "sumologic.fullname" . }}
{{- end -}}

{{- define "sumologic.metadata.name.roles.clusterrolebinding" -}}
{{- template "sumologic.fullname" . }}
{{- end -}}

{{- define "sumologic.metadata.name.roles.serviceaccount" -}}
{{- template "sumologic.fullname" . }}
{{- end -}}

{{- define "sumologic.metadata.name.logs" -}}
{{ template "sumologic.fullname" . }}-fluentd-logs
{{- end -}}

{{- define "sumologic.metadata.name.logs.service" -}}
{{ template "sumologic.metadata.name.logs" . }}
{{- end -}}

{{- define "sumologic.metadata.name.logs.service-headless" -}}
{{ template "sumologic.metadata.name.logs.service" . }}-headless
{{- end -}}

{{- define "sumologic.metadata.name.logs.configmap" -}}
{{ template "sumologic.metadata.name.logs" . }}
{{- end -}}

{{- define "sumologic.metadata.name.logs.statefulset" -}}
{{ template "sumologic.metadata.name.logs" . }}
{{- end -}}

{{- define "sumologic.metadata.name.metrics" -}}
{{ template "sumologic.fullname" . }}-fluentd-metrics
{{- end -}}

{{- define "sumologic.metadata.name.metrics.service" -}}
{{ template "sumologic.metadata.name.metrics" . }}
{{- end -}}

{{- define "sumologic.metadata.name.metrics.service-headless" -}}
{{ template "sumologic.metadata.name.metrics.service" . }}-headless
{{- end -}}

{{- define "sumologic.metadata.name.metrics.configmap" -}}
{{ template "sumologic.metadata.name.metrics" . }}
{{- end -}}

{{- define "sumologic.metadata.name.metrics.statefulset" -}}
{{ template "sumologic.metadata.name.metrics" . }}
{{- end -}}

{{- define "sumologic.metadata.name.events" -}}
{{ template "sumologic.fullname" . }}-fluentd-events
{{- end -}}

{{- define "sumologic.metadata.name.events.service" -}}
{{ template "sumologic.metadata.name.events" . }}
{{- end -}}

{{- define "sumologic.metadata.name.events.service-headless" -}}
{{ template "sumologic.metadata.name.events.service" . }}-headless
{{- end -}}

{{- define "sumologic.metadata.name.events.configmap" -}}
{{ template "sumologic.metadata.name.events" . }}
{{- end -}}

{{- define "sumologic.metadata.name.events.statefulset" -}}
{{ template "sumologic.metadata.name.events" . }}
{{- end -}}

{{- define "sumologic.metadata.name.otelcol" -}}
{{ template "sumologic.fullname" . }}-otelcol
{{- end -}}

{{- define "sumologic.metadata.name.otelcol.service" -}}
{{ template "sumologic.metadata.name.otelcol" . }}
{{- end -}}

{{- define "sumologic.metadata.name.otelcol.configmap" -}}
{{ template "sumologic.metadata.name.otelcol" . }}
{{- end -}}

{{- define "sumologic.metadata.name.otelcol.deployment" -}}
{{ template "sumologic.metadata.name.otelcol" . }}
{{- end -}}

{{- define "sumologic.metadata.name.setup" -}}
{{ template "sumologic.fullname" . }}-setup
{{- end -}}

{{- define "sumologic.metadata.name.setup.job" -}}
{{ template "sumologic.metadata.name.setup" . }}
{{- end -}}

{{- define "sumologic.metadata.name.setup.configmap" -}}
{{ template "sumologic.metadata.name.setup" . }}
{{- end -}}

{{- define "sumologic.metadata.name.setup.roles.clusterrole" -}}
{{ template "sumologic.metadata.name.setup" . }}
{{- end -}}

{{- define "sumologic.metadata.name.setup.roles.clusterrolebinding" -}}
{{ template "sumologic.metadata.name.setup" . }}
{{- end -}}

{{- define "sumologic.metadata.name.setup.roles.serviceaccount" -}}
{{ template "sumologic.metadata.name.setup" . }}
{{- end -}}

{{- define "sumologic.labels.logs" -}}
sumologic/app: fluentd-logs
sumologic/component: logs
{{- end -}}

{{- define "sumologic.labels.metrics" -}}
sumologic/app: fluentd-metrics
sumologic/component: metrics
{{- end -}}

{{- define "sumologic.labels.events" -}}
sumologic/app: fluentd-events
sumologic/component: events
{{- end -}}

{{- define "sumologic.labels.traces" -}}
sumologic/app: otelcol
sumologic/component: traces
{{- end -}}

{{/*
Create common labels used throughout the chart.
If dryRun=true, we do not create any chart labels.
*/}}
{{- define "sumologic.labels.common" -}}
{{- if .Values.dryRun -}}
{{- else -}}
chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
release: "{{ .Release.Name }}"
heritage: "{{ .Release.Service }}"
{{- end -}}
{{- end -}}

{{/*
Returns sumologic version string
*/}}
{{- define "sumologic.sumo_client" -}}
k8s_{{ .Chart.Version }}
{{- end -}}

{{/*
Returns clusterName with spaces replaced with dashes
*/}}
{{- define "sumologic.clusterNameReplaceSpaceWithDash" -}}
{{ .Values.sumologic.clusterName | replace " " "-"}}
{{- end -}}

{{/*
Get configuration value, otherwise returns default

Example usage:

{{ include "utils.get_default" (dict "Values" .Values "Keys" (list "key1" "key2") "Default" "default_value") | quote }}

It returns `.Value.key1.key2` if it exists otherwise `default_value`

*/}}
{{- define "utils.get_default" -}}
{{- $dict := .Values -}}
{{- $keys := .Keys -}}
{{- $default := .Default -}}
{{- $success := true }}
{{- range $keys -}}
  {{- if (and $success (hasKey $dict .)) }}
    {{- $dict = index $dict . }}
  {{- else }}
    {{- $success = false }}
  {{- end }}
{{- end }}
{{- if $success }}
  {{- $dict }}
{{- else }}
  {{- $default }}
{{- end }}
{{- end -}}

{{/*
Generate metrics match configuration

Example usage (as one line):

{{ include "utils.metrics.match" (dict 
  "Values" . 
  "Tag" "prometheus.metrics.kubelet" 
  "Endpoint" "SUMO_ENDPOINT_METRICS" 
  "Storage" .Values.fluentd.buffer.filePaths.metrics.default
  "Id" sumologic.endpoint.metrics
)}}
*/}}
{{- define "utils.metrics.match" -}}
<match {{ .Tag }}>
{{- if .Drop }}
  @type null
{{- else }}
  @type sumologic
  @id {{ .Id }}
  sumo_client {{ include "sumologic.sumo_client" .Context | quote }}
  endpoint "#{ENV['{{ include "terraform.sources.endpoint" .Endpoint}}']}"
{{- .Context.Values.fluentd.metrics.outputConf | nindent 2 }}
  <buffer>
    {{- if or .Context.Values.fluentd.persistence.enabled (eq .Context.Values.fluentd.buffer.type "file") }}
    @type file
    path {{ .Storage }}
    {{- else }}
    @type memory
    {{- end }}
    @include buffer.output.conf
  </buffer>
{{- end }}
</match>
{{ end -}}

{{/*
Convert source name to terraform name:
 * converts all `-` to `_`
 * adds `_source` suffix

Example usage:

{{ include "terraform.sources.name" $source }}

*/}}
{{- define "terraform.sources.name" -}}
{{ replace "-" "_" . }}_source
{{- end -}}

{{/*
Convert source name to terraform metric name:
 * converts all `-` to `_`
 * adds `_metrics_source` suffix

Example usage:

{{ include "terraform.sources.name_metrics" $source }}

*/}}
{{- define "terraform.sources.name_metrics" -}}
{{ replace "-" "_" . }}_metrics_source
{{- end -}}

{{/*
Generate endpoint variable string for given string

Example usage:

{{ include "terraform.sources.endpoint" "logs" }}

*/}}
{{- define "terraform.sources.endpoint" -}}
SUMO_ENDPOINT_{{ replace "-" "_" . | upper }}
{{- end -}}

{{/*
Generate endpoint variable string for given string

Example usage:

{{ include "terraform.sources.endpoint" "logs" }}

*/}}
{{- define "terraform.sources.endpoint_name" -}}
{{ printf "endpoint-%s" . }}
{{- end -}}

{{/*
Generate line for local terraform section
 * `terraform.sources.local = value`

Example usage:

{{ include "terraform.sources.local" $source }}

*/}}
{{- define "terraform.sources.local" -}}
{{ printf "%-43s = \"%s\"" .Name .Value }}
{{- end -}}

{{/*
Generate line for data terraform section

Example usage:

{{ include "terraform.sources.data" (dict "Endpoint" "enpoint-default-metrics" "Name" "default") }}

*/}}
{{- define "terraform.sources.data" -}}
{{ printf "%-41s = \"${sumologic_http_source.%s.url}\"" .Endpoint .Name }}
{{- end -}}

{{/*
Generate resource sections

Example usage:

{{ include "terraform.sources.resource" (dict "Source" $source "Context" $ctx) }}

*/}}
{{- define "terraform.sources.resource" -}}
{{- $source := .Source -}}
{{- $ctx := .Context -}}
resource "sumologic_http_source" "{{ .Name }}" {
    name         = local.{{ .Name }}
    collector_id = "${sumologic_collector.collector.id}"
    {{- if $source.category }}
    category     = {{ if $ctx.fluentd.events.sourceCategory }}{{ $ctx.fluentd.events.sourceCategory | quote }}{{- else}}{{ "\"${var.cluster_name}/${local.events_source}\"" }}{{- end}}
    {{- end }}
    {{- if $source.fields }}
    {{- range $fkey, $fvalue := $source.fields }}
    {{ $fkey }}  = "{{ $fvalue }}"
    {{- end -}}
    {{ end }}
}
{{- end -}}

{{/*
get configuration variable name for sources confg map

Example usage:

{{ include "terraform.sources.config-map-variable" (dict "Context" .Values "Name" $name "Endpoint" $endpoint) }}

*/}}
{{- define "terraform.sources.config-map-variable" -}}
{{- $name := .Name -}}
{{- $ctx := .Context -}}
{{- $endpoint := .Endpoint -}}
{{- if not $endpoint -}}
{{- $source := (index $ctx.sumologic.sources "default") -}}
{{- if (index $ctx.sumologic.sources .Name "config-name") -}}
{{- $endpoint = index $ctx.sumologic.sources .Name "config-name" -}}
{{- else -}}
{{- $endpoint = printf "endpoint-%s" (include "terraform.sources.name_metrics" $name) -}}
{{- end -}}
{{- end -}}
{{ $endpoint }}
{{- end -}}
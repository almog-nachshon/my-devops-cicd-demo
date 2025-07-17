{{- define "hello-world.name" -}}
hello-world
{{- end -}}

{{- define "hello-world.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "hello-world.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

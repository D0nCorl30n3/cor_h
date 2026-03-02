{{- define "env.template" }}
- name: {{ .env }}
  valueFrom: 
    secretRef:
      name: "{{ .name }}-sercret"
      key: {{ .env }}
{{- end }}
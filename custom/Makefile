SHELL := /bin/bash

generate:
	jsonnet -J vendor -S -e 'std.manifestYamlDoc((import "mixin.libsonnet").prometheusAlerts)' > output/alerts.yml
	jsonnet -J vendor -S -e 'std.manifestYamlDoc((import "mixin.libsonnet").prometheusRules)' > output/rules.yml
	jsonnet -J vendor -m output/dashboards -e '(import "mixin.libsonnet").grafanaDashboards'

# Newrelic-kubernetes

📘 New Relic Integration with Kubernetes

This application is integrated with New Relic to monitor both the Spring Boot service and the Kubernetes cluster it runs on. New Relic provides real-time insights into performance, logs, errors, and cluster health.

🚀 How New Relic Works in Kubernetes

New Relic uses lightweight agents deployed inside the cluster to collect:

Node and pod resource metrics

Container CPU / memory usage

Deployment and service status

Application performance (Java agent)

Prometheus metrics from /actuator/prometheus

Container logs

All collected data is sent securely to New Relic and displayed in dashboards.

🔧 Components Used
1. Kubernetes Integration (Helm Chart)

Installed using:

helm repo add newrelic https://helm-charts.newrelic.com
helm install newrelic-bundle newrelic/nri-bundle \
  --set global.licenseKey=<YOUR_LICENSE_KEY> \
  --set global.cluster=<CLUSTER_NAME>


This deploys:

nri-kubernetes (cluster metrics)

nri-prometheus (Prometheus scraping)

newrelic-infrastructure (node metrics)

newrelic-logging (logs)

2. Application Monitoring (Java Agent)

The Spring Boot app uses New Relic Java agent with environment variables:

NEW_RELIC_APP_NAME=SpringBoot-K8s-NewRelic
NEW_RELIC_LICENSE_KEY=<from secret>


The agent automatically collects request timings, errors, JVM metrics, and traces.
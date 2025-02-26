provider "kubernetes" {
  config_path = "~/.kube/config" # Change this if your Kube config is in a different location
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" # Ensure this matches your Kubernetes config path
  }
}

resource "helm_release" "prometheus" {
  name       = "prometheus"
  namespace  = "monitoring"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus"
  version    = "14.7.0" # You can use the latest version from the Helm repository
  values = [
    <<-EOF
    server:
      global:
        scrape_interval: 15s
      alerting:
        alertmanagers:
          - namespace: monitoring
            name: alertmanager
            port: web
    EOF
  ]

  create_namespace = true
}

output "prometheus_url" {
  value = "http://localhost:9090"
}
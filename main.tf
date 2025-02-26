           resource "kubernetes_namespace" "nginx" {
  metadata {
    name = var.namespace
  }
}

resource "helm_release" "nginx" {
  name       = "nginx"
  namespace  = var.namespace
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"
  version    = var.nginx_version

  values = [
    <<-EOF
    service:
      type: ClusterIP
      port: ${var.nginx_port}
    EOF
  ]

  depends_on = [kubernetes_namespace.nginx]
}

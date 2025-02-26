resource "kubernetes_namespace" "cilium" {
  metadata {
    name = var.namespace
  }
}

resource "helm_release" "cilium" {
  name       = "cilium"
  namespace  = var.namespace
  repository = "https://helm.cilium.io/"
  chart      = "cilium/cilium"
  version    = var.cilium_version

  values = [
    <<-EOF
    cni:
      install: true
    EOF
  ]

  depends_on = [kubernetes_namespace.cilium]
}

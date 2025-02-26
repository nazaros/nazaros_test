output "cilium_status" {
  value = helm_release.cilium.status
}

output "cilium_namespace" {
  value = kubernetes_namespace.cilium.metadata[0].name
}

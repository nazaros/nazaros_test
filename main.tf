provider "kubernetes" {
  config_path = "~/.kube/config"  # Adjust this if using another kubeconfig location
}

resource "null_resource" "download_calico" {
  provisioner "local-exec" {
    command = "curl -o calico-operator.yaml https://raw.githubusercontent.com/projectcalico/calico/v3.29.2/manifests/tigera-operator.yaml"
  }

  triggers = {
    always_run = "${timestamp()}"
  }
}

resource "kubernetes_manifest" "calico_operator" {
  manifest = yamldecode(
    file("calico-operator.yaml")
  )

  depends_on = [null_resource.download_calico]
}

output "status" {
  value = "Calico installation manifest applied. Check with kubectl get pods -n calico-system."
}

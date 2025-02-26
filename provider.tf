provider "kubernetes" {
  config_path = "~/.kube/config"  # Adjust if you're using a different kubeconfig path
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

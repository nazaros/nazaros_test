provider "kubernetes" {
  config_path = "~/.kube/config"  # Adjust if using a different kubeconfig path
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

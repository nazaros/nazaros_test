variable "namespace" {
  description = "Namespace to deploy Cilium"
  type        = string
  default     = "cilium"
}

variable "cilium_version" {
  description = "Cilium Helm chart version"
  type        = string
  default     = "1.17.1"  # Check for the latest version of Cilium
}

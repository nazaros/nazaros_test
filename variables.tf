variable "namespace" {
  description = "Namespace to deploy NGINX"
  type        = string
  default     = "nginx"
}

variable "nginx_version" {
  description = "NGINX Helm chart version"
  type        = string
  default     = "15.7.0"  # Check for the latest version in the Helm repository
}

variable "nginx_port" {
  description = "Port to expose NGINX service"
  type        = number
  default     = 80
}

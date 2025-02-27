variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region to deploy the VM"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The zone for the VM"
  type        = string
  default     = "us-central1-a"
}

variable "machine_type" {
  description = "The type of GCP machine"
  type        = string
  default     = "e2-medium"
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
  default     = "my-gcp-vm"
}

variable "image" {
  description = "The OS image for the VM"
  type        = string
  default     = "debian-cloud/debian-11"
}

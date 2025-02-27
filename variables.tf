variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "pubsub_topic" {
  description = "Pub/Sub topic name"
  type        = string
  default     = "my-topic"
}

variable "pubsub_subscription" {
  description = "Pub/Sub subscription name"
  type        = string
  default     = "my-subscription"
}

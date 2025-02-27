output "pubsub_topic" {
  description = "The name of the created Pub/Sub topic"
  value       = google_pubsub_topic.topic.name
}

output "pubsub_subscription" {
  description = "The name of the created Pub/Sub subscription"
  value       = google_pubsub_subscription.subscription.name
}

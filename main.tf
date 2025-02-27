# Create a Pub/Sub Topic
resource "google_pubsub_topic" "topic" {
  name = var.pubsub_topic
}

# Create a Pub/Sub Subscription
resource "google_pubsub_subscription" "subscription" {
  name  = var.pubsub_subscription
  topic = google_pubsub_topic.topic.name

  ack_deadline_seconds = 10  # Message must be acknowledged within 10 sec

  # (Optional) Push endpoint
  # push_config {
  #   push_endpoint = "https://your-endpoint.com"
  # }
}

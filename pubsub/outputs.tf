output "topic_name" {
  description = "The name of the Pub/Sub topic"
  value       = google_pubsub_topic.topic.name
}

output "topic_id" {
  description = "The ID of the Pub/Sub topic"
  value       = google_pubsub_topic.topic.id
}

output "subscription_names" {
  description = "The names of the Pub/Sub subscriptions"
  value       = [for sub in google_pubsub_subscription.subscription : sub.name]
}

output "subscription_ids" {
  description = "The IDs of the Pub/Sub subscriptions"
  value       = [for sub in google_pubsub_subscription.subscription : sub.id]
}

output "subscription_count" {
  description = "The number of Pub/Sub subscriptions created"
  value       = length(google_pubsub_subscription.subscription)
}
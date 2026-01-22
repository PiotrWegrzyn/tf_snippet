# Cloud Run outputs
output "cloud_run_service_url" {
  description = "The URL of the Cloud Run service"
  value       = module.cloudrun.service_url
}

output "cloud_run_service_name" {
  description = "The name of the Cloud Run service"
  value       = module.cloudrun.service_name
}

# Pub/Sub outputs
output "topic_name" {
  description = "The name of the Pub/Sub topic"
  value       = module.pubsub.topic_name
}

output "pubsub_subscription_names" {
  description = "The names of the Pub/Sub subscriptions"
  value       = module.pubsub.subscription_names
}

# IAM outputs
output "service_account_email" {
  description = "The email of the service account"
  value       = module.iam-module.service_account_email
}

# GCS Bucket outputs
output "bucket_name" {
  description = "The name of the GCS bucket"
  value       = google_storage_bucket.my_bucket.name
}
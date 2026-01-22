variable "project_id" {
  description = "The GCP project ID (must already exist)"
  type        = string
}

variable "pubsub_subscription_name" {
  description = "The name of the Cloud Run service"
  type        = string
  default     = "pubsub_test"
}

variable "topic_name" {
  description = "The topic name for pub sub"
  type        = string
  default     = "test_topic"
}


variable "project_id" {
  description = "The GCP project ID (must already exist)"
  type        = string
}

variable "pubsub_subscription_names" {
  description = "List of Pub/Sub subscription names"
  type        = list(string)
  default     = ["subscription1", "subscription2", "subscription3"]
}

variable "topic_name" {
  description = "The topic name for pub sub"
  type        = string
  default     = "test_topic"
}


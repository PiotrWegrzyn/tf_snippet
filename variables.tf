variable "project_id" {
  description = "The GCP project ID (must already exist)"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "europe-west2"
}

variable "env" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "subscription_names" {
  description = "List of Pub/Sub subscription names"
  type        = list(string)
  default     = ["pubsub_subscription_name"]
}

variable "topic_name" {
  description = "The topic name for pub sub"
  type        = string
  default     = "topic_name"
}

variable "cloud_run_service_name" {
  description = "The name of the Cloud Run service"
  type        = string
  default     = "nginx-service"
}

variable "env_vars" {
  type = list(object({
    key   = string
    value = string
  }))
  default     = []
  description = "List of environment variables as key-value pairs"
}

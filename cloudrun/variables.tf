variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "service_name" {
  description = "The name of the Cloud Run service"
  type        = string
}

variable "service_account_email" {
  description = "The service account email to use for the Cloud Run service"
  type        = string
}

variable "env_vars" {
  type = list(object({
    key   = string
    value = string
  }))
  default     = []
  description = "List of environment variables as key-value pairs"
}
variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "ws-piotr-wegrzyn"
}

variable "region" {
  description = "GCP region for resources"
  type        = string
  default     = "europe-west1"
}

variable "cloud_run_service_name" {
  description = "Name of the Cloud Run service"
  type        = string
  default     = "nginx-service"
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
}

variable "labels" {
  description = "Common labels for all resources"
  type        = map(string)
  default     = {}
}
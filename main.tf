data "google_project" "project" {
  project_id = var.project_id
}


module "iam-module" {
  source = "./iam-module"

  project_id         = var.project_id
  role_id            = "customCloudRunRole"
  role_title         = "Custom Cloud Run Role"
  service_account_id = "cloud-run-sa"
}

module "pubsub" {
  source = "./pubsub"

  project_id                = var.project_id
  topic_name                = "${var.topic_name}-${terraform.workspace}"
  pubsub_subscription_names = [for name in var.subscription_names : "${name}-${terraform.workspace}"]
}

module "cloudrun" {
  source = "./cloudrun"

  project_id            = var.project_id
  region                = var.region
  service_name          = var.cloud_run_service_name
  service_account_email = module.iam-module.service_account_email
  env_vars              = var.env_vars
}

resource "google_storage_bucket" "my_bucket" {
  project                     = data.google_project.project.project_id
  name                        = "bucket-${data.google_project.project.project_id}-${terraform.workspace}"
  location                    = var.region
  force_destroy               = true
  uniform_bucket_level_access = true
}
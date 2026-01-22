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

  project_id               = var.project_id
  topic_name               = "${var.topic_name}_${var.env}"
  pubsub_subscription_name = "${var.pubsub_subscription_name}_${var.env}"
}

module "cloudrun" {
  source = "./cloudrun"

  project_id            = var.project_id
  region                = var.region
  service_name          = var.cloud_run_service_name
  service_account_email = module.iam-module.service_account_email
}
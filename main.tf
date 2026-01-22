data "google_project" "project" {
  project_id = var.project_id
}


module "iam-module" {
  source = "./iam-module"

  project_id        = var.project_id
}

module "pubsub" {
  source = "./pubsub"

  project_id        = var.project_id
  topic_name        = "${var.topic_name}${var.env}"
  pubsub_subscription_name = "${var.pubsub_subscription_name}${var.env}"
}
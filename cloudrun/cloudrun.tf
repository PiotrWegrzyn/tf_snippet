resource "google_cloud_run_v2_service" "service" {
  project             = var.project_id
  name                = var.service_name
  location            = var.region
  deletion_protection = false

  template {
    service_account = var.service_account_email

    containers {
      image = "nginx:alpine"

      ports {
        container_port = 80
      }

      resources {
        limits = {
          cpu    = "1000m"
          memory = "512Mi"
        }
      }
    }
  }
}

resource "google_cloud_run_service_iam_member" "public_access" {
  project  = var.project_id
  service  = google_cloud_run_v2_service.service.name
  location = google_cloud_run_v2_service.service.location
  role     = "roles/run.invoker"
  member   = "allUsers"
}
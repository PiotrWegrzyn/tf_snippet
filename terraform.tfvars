project_id             = "ws-piotr-wegrzyn"
region                 = "europe-west2"
cloud_run_service_name = "nginx-service-lab1"

env_vars = [
  {
    key   = "ENVIRONMENT"
    value = "production"
  },
  {
    key   = "API_KEY"
    value = "your-api-key"
  }
]

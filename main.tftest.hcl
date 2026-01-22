mock_provider "google" {}

run "test_topic_name" {
  command = plan

  assert {
    condition     = output.topic_name == "${var.topic_name}-${terraform.workspace}"
    error_message = "Topic name should match pattern '{topic_name}-{workspace}'"
  }
}

run "test_bucket_created" {
  command = apply

  assert {
    condition     = google_storage_bucket.my_bucket.name == "bucket-${data.google_project.project.project_id}-${terraform.workspace}"
    error_message = "Bucket name should match pattern 'bucket-{project_id}-{workspace}'"
  }

  assert {
    condition     = google_storage_bucket.my_bucket.project == data.google_project.project.project_id
    error_message = "Bucket project should match the configured project"
  }
}
terraform {
  backend "gcs" {
    bucket = "ws-piotr"
    prefix = "tfstate"
  }
  required_version = ">= 1.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.16.0"
    }
  }
}

provider "google" {
  region = var.region
}

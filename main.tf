terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
  backend "gcs" {
    bucket  = "tf-gcp-chalenge-cabot-victor-storage"
    prefix  = "terraform/state"
  }
}

module "cloud" {
    source = "./modules/cloud"
}

module "storage" {
  source = "./modules/storage"
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
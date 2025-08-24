terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
  backend "gcs" {
    bucket = "your-tfstate-bucket"
    prefix = "zabbix"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
  backend "gcs" {
    bucket = "bucket-akmal-state-20250815"
    prefix = "zabbix"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

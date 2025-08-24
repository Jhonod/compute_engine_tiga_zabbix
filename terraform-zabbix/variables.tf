variable "project_id" {}
variable "region" {
  default = "asia-southeast2"
}
variable "zone" {
  default = "asia-southeast2-a"
}
variable "machine_type" {
  default = "e2-medium"
}
variable "image_family" {
  default = "ubuntu-2404-lts"
}
variable "image_project" {
  default = "ubuntu-os-cloud"
}
variable "ssh_user" {
  default = "ubuntu"
}

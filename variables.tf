variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region to deploy the VM"
  default     = "us-central1"
}

variable "zone" {
  description = "The zone to deploy the VM"
  default     = "us-central1-a"
}

variable "machine_type" {
  description = "The machine type"
  default     = "e2-medium"
}

variable "image_family" {
  description = "The image family"
  default     = "debian-10"
}

variable "image_project" {
  description = "The image project"
  default     = "debian-cloud"
}

variable "instance_name" {
  description = "The name of the VM instance"
  default     = "my-vm-instance"
}

variable "gcp_service_account_key" {
  description = "The GCP service account key"
  type        = string
}

variable "credentials_file" {
  type        = string
  description = "credentials"
  default     = "mygcpproj253-e2a064bcc064.json"
}
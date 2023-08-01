variable "gcp_project_id" {
  description = "GCP Project ID"
}

variable "gcp_region" {
  description = "GCP Region"
  default     = "us-central1"
}

variable "gcp_zone" {
  description = "GCP Zone"
  default     = "us-central1-a"
}

variable "gcp_machine_type" {
  description = "GCP VM Machine Type"
  default     = "n1-standard-1"
}

variable "num_vms" {
  description = "Number of VM to make"
  default     = "1"
}
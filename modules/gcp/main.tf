variable "vm_count" {
  description = "Number of VMs to create"
}

variable "project_id" {
  description = "GCP Project ID"
}

variable "region" {
  description = "GCP Region"
}

variable "zone" {
  description = "GCP Zone"
}

variable "machine_type" {
  description = "GCP VM Machine Type"
}

resource "google_compute_instance" "gcp_vms" {
  count        = var.vm_count
  name         = "gcp-vm-${count.index + 1}"
  machine_type = var.machine_type
  zone         = var.zone
  project      = var.project_id

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
  }
}
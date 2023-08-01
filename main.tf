locals {
  num_vms = var.num_vms
}

module "gcp_vms" {
  source = "./modules/gcp"

  vm_count     = local.num_vms
  project_id   = var.gcp_project_id
  region       = var.gcp_region
  zone         = var.gcp_zone
  machine_type = var.gcp_machine_type
}


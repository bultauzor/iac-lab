module "bdd" {
  source = "./bdd"

  providers = {
    proxmox = proxmox
  }

  instance_memory       = var.bdd_instance_memory
  instance_name         = var.bdd_instance_name
  instance_address      = var.bdd_instance_address
  instance_disk_size    = var.bdd_instance_disk_size
  instance_vcpu         = var.bdd_instance_vcpu
  instance_datastore_id = var.bdd_instance_datastore_id
  instance_iso          = var.bdd_instance_iso
  instance_gateway      = var.bdd_instance_gateway
  instance_ssh_pubkey   = var.ssh_pubkey
}

module "app" {
  source = "./app"

  providers = {
    proxmox = proxmox
  }

  depends_on = [module.bdd]

  instance_memory       = var.app_instance_memory
  instance_name         = var.app_instance_name
  instance_address      = var.app_instance_address
  instance_disk_size    = var.app_instance_disk_size
  instance_vcpu         = var.app_instance_vcpu
  instance_datastore_id = var.app_instance_datastore_id
  instance_iso          = var.app_instance_iso
  instance_gateway      = var.app_instance_gateway
  instance_ssh_pubkey   = var.ssh_pubkey
}

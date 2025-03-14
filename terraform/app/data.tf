data "proxmox_virtual_environment_pool" "cytech" {
  pool_id = local.pool_id
}

data "local_file" "ssh_public_key" {
  filename = var.instance_ssh_pubkey
}

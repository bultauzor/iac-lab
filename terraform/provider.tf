terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.73.0"
    }
  }
}

provider "proxmox" {
  endpoint = var.provider_proxmox_endpoint
  insecure = var.provider_proxmox_insecure
  username = var.provider_proxmox_username
  password = var.provider_proxmox_password
  ssh {
    username = var.provider_proxmox_ssh_username
    agent    = true
  }
}

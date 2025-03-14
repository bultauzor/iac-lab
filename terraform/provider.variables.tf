variable "provider_proxmox_endpoint" {
  type        = string
  nullable    = false
  description = "Address of the proxmox server"
}

variable "provider_proxmox_insecure" {
  type        = bool
  default     = false
  nullable    = false
  description = "If terraform should check certificates"
}

variable "provider_proxmox_username" {
  type        = string
  nullable    = false
  sensitive   = true
  description = "Username for proxmox authentication"
}

variable "provider_proxmox_password" {
  type        = string
  nullable    = false
  sensitive   = true
  description = "Password for proxmox authentication"
}

variable "provider_proxmox_ssh_username" {
  type        = string
  nullable    = false
  sensitive   = true
  description = "Username for proxmox ssh authentication"
}

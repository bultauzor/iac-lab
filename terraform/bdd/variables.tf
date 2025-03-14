variable "instance_memory" {
  type        = number
  nullable    = false
  description = "Memory of the instance in MB"
}

variable "instance_vcpu" {
  type        = number
  nullable    = false
  description = "VCPU count of the instance"
}

variable "instance_datastore_id" {
  type        = string
  default     = "raid-ssd"
  nullable    = false
  description = "Datastore ID"
}

variable "instance_disk_size" {
  type        = number
  nullable    = false
  description = "Size of the instance's disk in GB"
}

variable "instance_iso" {
  type        = string
  default     = "iso/jammy-server-cloudimg-amd64.img"
  nullable    = false
  description = "Image path of the OS"
}

variable "instance_name" {
  type        = string
  default     = "cytech-12-bdd"
  nullable    = false
  description = "Instance name"
}

variable "instance_address" {
  type        = string
  nullable    = false
  description = "IP address of the instance"
}

variable "instance_gateway" {
  type        = string
  default     = "192.168.100.1"
  nullable    = false
  description = "Gateway address"
}

variable "instance_ssh_pubkey" {
  type        = string
  nullable    = false
  description = "SSH Public Key"
}

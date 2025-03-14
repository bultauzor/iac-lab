variable "bdd_instance_memory" {
  type        = number
  nullable    = false
  description = "Memory of the instance in MB"
}

variable "bdd_instance_vcpu" {
  type        = number
  nullable    = false
  description = "VCPU count of the instance"
}

variable "bdd_instance_datastore_id" {
  type        = string
  default     = "raid-ssd"
  nullable    = false
  description = "Datastore ID"
}

variable "bdd_instance_disk_size" {
  type        = number
  nullable    = false
  description = "Size of the instance's disk in GB"
}

variable "bdd_instance_iso" {
  type        = string
  default     = "iso/jammy-server-cloudimg-amd64.img"
  nullable    = false
  description = "Image path of the OS"
}

variable "bdd_instance_name" {
  type        = string
  default     = "cytech-12-bdd"
  nullable    = false
  description = "Instance name"
}

variable "bdd_instance_address" {
  type        = string
  nullable    = false
  description = "IP address of the instance"
}

variable "bdd_instance_gateway" {
  type        = string
  default     = "192.168.100.1"
  nullable    = false
  description = "Gateway address"
}

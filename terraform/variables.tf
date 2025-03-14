variable "ssh_pubkey" {
  type        = string
  nullable    = false
  description = "SSH Public Key to login into instances in the cluster"
}

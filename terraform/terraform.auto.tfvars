###
# Provider variables
###

provider_proxmox_endpoint     = "https://192.168.100.12:8006/"
provider_proxmox_insecure     = true
provider_proxmox_username     = "cytech-12@pam"
provider_proxmox_password     = "cytech"
provider_proxmox_ssh_username = "cytech"

###
# Common variables
###

ssh_pubkey = "../.ssh/effystack.pub" # To change to your ssh key location

###
# APP variables
###

app_instance_memory    = 1024
app_instance_name      = "cytech-12-app"
app_instance_address   = "192.168.100.142/24"
app_instance_disk_size = 20
app_instance_vcpu      = 1
# app_instance_datastore_id use default
# app_instance_iso use default
# app_instance_gateway use default

###
# BDD variables
###

bdd_instance_memory    = 2048
bdd_instance_name      = "cytech-12-bdd"
bdd_instance_address   = "192.168.100.143/24"
bdd_instance_disk_size = 20
bdd_instance_vcpu      = 1
# bdd_instance_datastore_id use default
# bdd_instance_iso use default
# bdd_instance_gateway use default

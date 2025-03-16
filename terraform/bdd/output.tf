output "ram" {
  value = "${var.instance_memory} Mo"
}

output "vcpu" {
  value = var.instance_vcpu
}

output "disk" {
  value = "${var.instance_disk_size} Go"
}

output "os" {
  value = "ubuntu (${var.instance_iso})"
}

output "name" {
  value = var.instance_name
}

output "ip" {
  value = split("/", var.instance_address)[0]
}

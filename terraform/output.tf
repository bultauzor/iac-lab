output "app" {
  value = "Configuration VM app :"
}

output "app_ram" {
  value = module.app.ram
}

output "app_vcpu" {
  value = module.app.vcpu
}

output "app_disk" {
  value = module.app.disk
}

output "app_os" {
  value = module.app.os
}

output "app_name" {
  value = module.app.name
}

output "app_ip" {
  value = module.app.ip
}

output "bdd" {
  value = "Configuration VM bdd :"
}

output "bdd_ram" {
  value = module.bdd.ram
}

output "bdd_vcpu" {
  value = module.bdd.vcpu
}

output "bdd_disk" {
  value = module.bdd.disk
}

output "bdd_os" {
  value = module.bdd.os
}

output "bdd_name" {
  value = module.bdd.name
}

output "bdd_ip" {
  value = module.bdd.ip
}

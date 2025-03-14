resource "proxmox_virtual_environment_vm" "bdd" {
  name      = var.instance_name
  node_name = local.node_name
  pool_id   = data.proxmox_virtual_environment_pool.cytech.pool_id

  cpu {
    cores = var.instance_vcpu
  }

  memory {
    dedicated = var.instance_memory
  }

  network_device {
    bridge = local.instance_bridge
  }

  disk {
    datastore_id = var.instance_datastore_id
    file_id      = "isos:${var.instance_iso}"
    interface    = "virtio0"
    iothread     = true
    discard      = "on"
    size         = var.instance_disk_size
  }

  initialization {
    datastore_id = var.instance_datastore_id
    ip_config {
      ipv4 {
        address = var.instance_address
        gateway = var.instance_gateway
      }
    }
    user_account {
      username = "ubuntu"
      keys = [trimspace(data.local_file.ssh_public_key.content)]
    }
    user_data_file_id = proxmox_virtual_environment_file.user_data_cloud_config_bdd.id
  }

  stop_on_destroy = true
}

resource "proxmox_virtual_environment_file" "user_data_cloud_config_bdd" {
  content_type = "snippets"
  datastore_id = "local"
  node_name    = local.node_name

  source_raw {
    data = <<-EOF
    #cloud-config
    hostname: ${var.instance_name}
    users:
      - default
      - name: ubuntu
        groups:
          - sudo
        shell: /bin/bash
        ssh_authorized_keys:
          - ${trimspace(data.local_file.ssh_public_key.content)}
        sudo: ALL=(ALL) NOPASSWD:ALL
    runcmd:
        - apt update
        - apt install -y qemu-guest-agent net-tools
        - timedatectl set-timezone Europe/Paris
        - systemctl enable qemu-guest-agent
        - systemctl start qemu-guest-agent
        - echo "done" > /tmp/cloud-config.done
    EOF

    file_name = "user-data-cloud-config-${var.instance_name}.yaml"
  }
}

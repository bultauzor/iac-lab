# Ansible

The playbook `playbooks/terraform.yml` is run after a `terraform apply`.
It waits for the vms to start, updates the APT cache, and does some setup steps.
Then it runs the playbook `playbooks/main.yml` which runs the roles on the bdd and api.

Variables are located in `vars.yml`

## Run the main playbook

```shell
ansible-playbook -i inventory/inventory.ini playbooks/main.yml
```

## Run the main playbook for the `app` group

```shell
ansible-playbook -i inventory/inventory.ini playbooks/main.yml -l app
```

## Run the main playbook for the `bdd` group and with the update the APT cache step

```shell
ansible-playbook -i inventory/inventory.ini playbooks/main.yml -l bdd -e update_apt_cache=yes
```

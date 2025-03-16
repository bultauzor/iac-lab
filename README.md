# Infrastructure as Code lab

Terraform part is located at `terraform/`.
Variables are stored in the `terraform/terraform.auto.tfvars` file.

Ansible part is located at `ansible/`.
It has two playbooks and two roles.
Variables are stored in the `ansible/vars.yml` file.

Doing a `terraform apply` in `terraform/` directory, will create two vms and run the `ansible/playbooks/terraform.yml`
playbook.

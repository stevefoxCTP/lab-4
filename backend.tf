// Configure Terraform to store its state in the remote Terraform Enterprise backend
// https://www.terraform.io/docs/backends/types/remote.html
terraform {
  backend "remote" {
    hostname     = "ptfe.ctp-devops-training.com"
    organization = "ctp-terraform-training"
    token        = "USER_TOKEN"

    workspaces {
      // Note: ${var.lab_username} cannot be used in this block (no variables can be used)

      // create a workspace with this name.
      // name    = "lab-user-x-lab-4-green"
    }
  }
}

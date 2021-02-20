variable "token" {
}

variable "workspace_name" {
}

variable "organization_name" {
}

provider "tfe" {
  token    = var.token
}

data "tfe_workspace" "default" {
  name         = var.workspace_name
  organization = var.organization_name
}

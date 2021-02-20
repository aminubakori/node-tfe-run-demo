variable "token" {
  type = "string"
}

variable "workspace_name" {
  type = "string"
}

variable "organization_name" {
  type = "string"
}

provider "tfe" {
  token    = var.token
  version  = "~> 0.15.0"
}

data "tfe_workspace" "default" {
  name         = var.workspace_name
  organization = var.organization_name
}

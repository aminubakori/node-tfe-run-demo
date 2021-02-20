variable "token" {
}

variable "organization_name " {
}

variable "email" {
}

provider "tfe" {
  token    = var.token
}

resource "tfe_organization" "test" {
  name  = var.organization_name 
  email = var.email
}

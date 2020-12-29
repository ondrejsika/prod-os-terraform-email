variable "poste_origin" {}
variable "poste_username" {}
variable "poste_password" {}

provider "poste" {
  origin   = var.poste_origin
  username = var.poste_username
  password = var.poste_password
}

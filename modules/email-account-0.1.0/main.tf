variable "email" {}
variable "sieve" {
  default = ""
}

resource "random_password" "main" {
  length  = 16
  special = false
}

resource "poste_box" "main" {
  email    = var.email
  password = random_password.main.result
  sieve    = var.sieve
}

output "box" {
  value = poste_box.main
}

output "email_password" {
  value = {
    email : poste_box.main.email,
    password : poste_box.main.password,
  }
}

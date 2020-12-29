resource "poste_domain" "sikamail_com" {
  name = "sikamail.com"
}

module "o" {
  source  = "./modules/email-account-0.1.0"
  email = "o@${poste_domain.sikamail_com.name}"
}

output "passwords" {
  value = [
    module.o.email_password,
  ]
  sensitive = true
}

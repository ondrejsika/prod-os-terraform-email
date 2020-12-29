terraform {
  backend "remote" {
    organization = "ondrejsika"
    workspaces {
      name = "email"
    }
  }
}

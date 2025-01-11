module "default_name_rg" {
  source   = "../.."
  env      = var.env
  location = var.location
  tags = {
    environment = var.env
  }
}

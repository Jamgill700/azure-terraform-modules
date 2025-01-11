module "custom_name_rg" {
  source   = "../.."
  name     = "rg-custom-name"
  location = "northeurope"
  tags = {
    env = "dev"
  }
}

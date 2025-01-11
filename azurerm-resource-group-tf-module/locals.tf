locals {

  env_list = [
    null,
    "dev",
    "tst",
    "prd"
  ]

  env_check = var.name == null ? var.env != null ? true : tobool("The env variable cannot be null if using default naming") : true

  default_name = var.name != null ? var.name : join("-", ["rg", random_id.name.hex, var.env])

}

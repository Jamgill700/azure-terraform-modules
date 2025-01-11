resource "random_id" "name" {
  byte_length = 4
}

resource "azurerm_resource_group" "this" {
  name       = local.default_name
  location   = var.location
  managed_by = var.managed_by
  tags = merge({
    environment = var.env
  }, var.tags)
}

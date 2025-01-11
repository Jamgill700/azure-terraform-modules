output "name" {
  description = "The Name for this Resource Group."
  value       = azurerm_resource_group.this.name
}

output "id" {
  description = "The ID for this Resource Group."
  value       = azurerm_resource_group.this.id
}

output "location" {
  description = "The ID for this Resource Group."
  value       = azurerm_resource_group.this.location
}

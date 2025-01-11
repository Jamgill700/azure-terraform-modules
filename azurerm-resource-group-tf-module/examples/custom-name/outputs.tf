output "name" {
  description = "The Name for this Resource Group."
  value       = module.custom_name_rg.name
}

output "id" {
  description = "The ID for this Resource Group."
  value       = module.custom_name_rg.id
}

output "location" {
  description = "The location for this Resource Group."
  value       = module.custom_name_rg.location
}

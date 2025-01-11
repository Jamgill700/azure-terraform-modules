#--------------------------------
# Variables
#--------------------------------

variable "location" {
  description = "The location/region where the virtual machine will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created."
  type        = string
}


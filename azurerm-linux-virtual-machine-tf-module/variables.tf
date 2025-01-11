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

# variable "subnet_id" {
#   description = "The ID of the subnet to which the network interface will be attached."
#   type        = string
# }

#--------------------------------
# Virtual NIC Variables
#--------------------------------

variable "ip_configuration" {
  description = "The IP configuration for the network interface."
  type = list(object({
    name                          = string
    subnet_id                     = string
    private_ip_address_allocation = string
  }))
}


#--------------------------------
# Virtual Machine Variables
#--------------------------------

variable "os_disk" {
  description = "The OS disk configuration for the virtual machine."
  type = object({
    caching              = string
    storage_account_type = string
  })
  default = {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
}

variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
  default     = "null"
}

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
  default     = "Standard_B1s"
}

variable "username" {
  description = "The username for the virtual machine."
  type        = string
  default     = "adminuser"
}
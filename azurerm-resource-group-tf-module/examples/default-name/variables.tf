variable "env" {
  description = "The environment of the resource group."
  type        = string
  default     = "dev"
}

variable "location" {
  description = "The location the resource group should be deployed"
  type        = string
  default     = "northeurope"
}
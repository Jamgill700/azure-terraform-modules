variable "env" {
  description = "(Required) The environment of the resource group, prd, tst, dev. Required for default naming."
  type        = string
  default     = null

  # validation {
  #   condition     = contains(["null", "dev", "tst", "prd"], var.env)
  #   error_message = "Must contain a value from the list, null, 'dev', 'tst', 'prd'."
  # }
}

variable "location" {
  description = "(Required) The Azure Region where the Resource Group should exist."
  type        = string
  nullable    = false
}

variable "name" {
  description = "(Required) The Name which should be used for this Resource Group."
  default     = null
}

variable "managed_by" {
  description = "(Optional) The ID of the resource or application that manages this Resource Group."
  type        = string
  default     = null
}

variable "tags" {
  description = "(Optional) A mapping of tags which should be assigned to the Resource Group."
  type        = map(string)
  default     = {}
}

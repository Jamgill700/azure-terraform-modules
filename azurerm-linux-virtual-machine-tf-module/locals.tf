locals {

  vm_name = var.vm_name != null ? var.vm_name : "vm-${random_id.name.hex}"

  vm_name_length_check = var.vm_name != null ? (length(var.vm_name) > 0 && length(var.vm_name) <= 64) ? true : tobool("The virtual machine name must be between 1 and 64 characters in length.") : true


}

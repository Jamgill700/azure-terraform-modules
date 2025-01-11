check "vm_name" {
  assert {
    condition     = var.vm_name != null ? (length(var.vm_name) > 0 && length(var.vm_name) <= 64) ? true
    error_message = "The virtual machine name must be between 1 and 64 characters in length."
  }
}
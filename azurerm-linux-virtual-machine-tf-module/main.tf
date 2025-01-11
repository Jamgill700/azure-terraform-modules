resource "random_id" "name" {
  byte_length = 4
}

resource "azurerm_network_interface" "main" {
  name                = "${local.vm_name}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  #   ip_configuration {
  #     name                          = "internal"
  #     subnet_id                     = var.subnet_id
  #     private_ip_address_allocation = var.private_ip_address_allocation "Dynamic"
  #   }

  dynamic "ip_configuration" {
    for_each = var.ip_configuration
    content {
      name                          = ip_configuration.value.name
      subnet_id                     = ip_configuration.value.subnet_id
      private_ip_address_allocation = ip_configuration.value.private_ip_address_allocation
    }
  }
}

resource "azurerm_linux_virtual_machine" "main" {
  name                = local.vm_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.username # "adminuser"
  network_interface_ids = [
    azurerm_network_interface.main.id,
  ]

  admin_ssh_key {
    username   = var.username
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = var.os_disk.caching
    storage_account_type = var.os_disk.storage_account_type
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }


}

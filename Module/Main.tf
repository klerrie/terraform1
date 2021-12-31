
resource "azurerm_resource_group" "RG-One" {
  name     = "${var.resource_group_name}"
  location = "${var.resource_group_location}"
}

resource "azurerm_virtual_network" "Vnet-One" {
  name                = "${var.virtual_network}"
  location            = "${azurerm_resource_group.RG-One.location}"
  resource_group_name = "${azurerm_resource_group.RG-One.name}"
  address_space       = ["${var.address_space}"] 
  }

resource "azurerm_subnet" "subnet" {
    name           = element(var.subnet_name, count.index)
    resource_group_name = "${azurerm_resource_group.RG-One.name}"
    virtual_network_name = "${azurerm_virtual_network.Vnet-One.name}"
    address_prefixes = [element(var.subnet_prefix, count.index)]
    count = length(var.subnet_name)
  }

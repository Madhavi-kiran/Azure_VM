resource "azurerm_resource_group" "madhavi-rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_network_security_group" "madhavi-nsg" {
  name                = var.network_security_group_name
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_virtual_network" "madhavi-vnet" {
  name                = var.virtual_network_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = [var.address_space]

   
   
    

  tags = {
    environment = "dev"
  }
  
}
resource "azurerm_subnet" "my-bnet" {
     name =" $(var.subnet_name[count.index])"
     resource_group_name = var.resource_group_name
     virtual_network_name = var.virtual_network_name
     address_prefixes = var.address_prefixes[count.index]
     count="${length(var.subnet_name)}"
  }
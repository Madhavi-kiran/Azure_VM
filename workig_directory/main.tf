module "virtual" {
  source = "../main_directory"
  resource_group_name =var.resource_group_name
  location =var.location
  network_security_group_name=var.network_security_group_name
virtual_network_name=var.virtual_network_name
address_space =var.address_space
subnet_name = var.subnet_name
address_prefixes = var.address_prefixes
}


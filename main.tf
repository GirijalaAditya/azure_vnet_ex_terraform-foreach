resource "azurerm_virtual_network" "az_vnet" {
  address_space       = var.address_space
  location            = azurerm_resource_group.az_rg.location
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.az_rg.name
  tags                = var.tags
}

resource "azurerm_subnet" "az_subnet" {
  for_each             = var.subnets
  address_prefixes     = [each.value]
  name                 = each.key
  resource_group_name  = azurerm_resource_group.az_rg.name
  virtual_network_name = azurerm_virtual_network.az_vnet.name
}

# resource "azurerm_subnet" "subnet_count" {
#   count = var.use_for_each ? 0 : length(var.subnet_names)
#   address_prefixes                               = [var.subnet_prefixes[count.index]]
#   name                                           = var.subnet_names[count.index]
#   resource_group_name                            = azurerm_resource_group.az_rg.name
#   virtual_network_name                           = azurerm_virtual_network.vnet.name
# }



# locals {
#   azurerm_subnets = var.use_for_each ? [for s in azurerm_subnet.subnet_for_each : s] : [for s in azurerm_subnet.subnet_count : s]
#   azurerm_subnets_name_id_map = {
#     for index, subnet in local.azurerm_subnets :
#     subnet.name => subnet.id
#   }
# }

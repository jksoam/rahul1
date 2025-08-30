resource "azurerm_virtual_network" "vnet" {
    for_each = var.virtual_networks
    name     = each.value.name
    location = each.value.location
    address_space = each.value.address_space
    resource_group_name = each.value.resource_group_name
  
}

resource "azurerm_virtual_network" "vnet" {
    for_each = var.virtual_networks
    name     = each.value.name
    location = each.value.location
    address_space = each.value.address_space
    resource_group_name = azurerm_resource_group.rg[each.value.resource_group].name
  
}
resource "azurerm_subnet" "snet" {
    for_each = var.subnets
    name     = each.value.name
    resource_group_name = each.value.resource_group.name
    virtual_network_name = each.value.virtual_network.name
    address_prefixes = each.value.address_prefixes

    # Optional properties can be added here if needed
    # delegation {
    #     name = "example-delegation"
    #     service_delegation {
    #         name = "Microsoft.Sql/servers"
    #     }
    # }
  
}
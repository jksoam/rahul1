resource_groups = {
    "rg1" = {
        name     = "rg1"
        location = "West Europe"
    }
}
virtual_networks = {
    "vnet1" = {
        name              = "vnet1"
        location          = "West Europe"
        address_space     = ["10.0.0.0/16"]
        resource_group_name    = "rg1"
    }
}
subnets = {
    "subnet1" = {
        name                 = "subnet1"
        resource_group_name       = "rg1"
        virtual_network      = "vnet1"
        address_prefixes     = ["10.0.1.0/24"]
    }
    "subnet2" = {
        name                 = "subnet2"
        resource_group_name       = "rg1"
        virtual_network      = "vnet1"
        address_prefixes     = ["10.0.2.0/24"]
    }
}

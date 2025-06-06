module "rg" {
    source = "../../rg"
    
    resource_groups = var.resource_groups
  
}

module "vnets" {
    source = "../../vnet"
    
    virtual_networks = var.virtual_networks
    depends_on = [ var.resource_groups ]
  
}
module "subnets" {
    source = "../../subnet"
    
    subnets = var.subnets
    depends_on = [ module.vnets , module.rg ]
  
}
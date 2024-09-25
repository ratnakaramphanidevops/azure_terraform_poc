module "vnet_1" {
    source = "../infra-azure/Terraform/virtual_network"
    resource_group_name = module.azurerm_resource_group.rg1.resource_group_name
    location = module.resource_group_name.rg1.location 
    address_space = ["10.0.0.0/16"]
}

module "vnet_2" {
    source = "../infra-azure/Terraform/virtual_network"
    resource_group_name = module.azurerm_resource_group.rg1.resource_group_name
    location2 = "souteast asia"
    address_space2 = ["192.0.0.0/16"]
}
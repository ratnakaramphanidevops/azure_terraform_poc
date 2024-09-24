resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetus#"eastusvnet"
  location            = azurerm_resource_group.oidc.location
  resource_group_name = azurerm_resource_group.oidc.name
  address_space       = var.address_space #["10.0.0.0/16"]
}

resource "azurerm_virtual_network" "example" {
  name                =  var.vnetasia #"asiavnet"
  location            = var.location2
  resource_group_name = azurerm_resource_group.oidc.name
  address_space       = var.address_space2 #["192.0.0.0/16"]
}
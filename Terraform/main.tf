provider "azurerm" {
  features {}
  use_oidc = true
}

resource "azurerm_resource_group" "oidc" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  location            = azurerm_resource_group.oidc.location
  resource_group_name = azurerm_resource_group.oidc.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  location            = var.location2
  resource_group_name = azurerm_resource_group.oidc.name
  address_space       = ["192.0.0.0/16"]
}
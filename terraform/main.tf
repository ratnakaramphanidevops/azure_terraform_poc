provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-backend-rg"
    storage_account_name = "terraformstabe1987"
    container_name       = "tfstate"
    key                  = "terraformpoc.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}

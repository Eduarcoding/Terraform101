provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "this" {
  name     = "Terraform101-02-Basic-Commands"
  location = "West Europe"
}
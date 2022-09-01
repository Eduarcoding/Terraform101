provider "azurerm" {
  features {
    
  }
}

variable "resource_group_name" {
  type = string
}

resource "azurerm_resource_group" "parent" {
  name     = var.resource_group_name
  location = "West Europe"
}

# resource "azurerm_resource_group" "child" {
#   name     = "${azurerm_resource_group.this.name}-child"
#   location = "West Europe"
# }

resource "azurerm_resource_group" "child" {
  name     = "${azurerm_resource_group.parent.name}-child"
  location = "West Europe"
}
## Provider
provider "azurerm" {
  features {
    
  }
}

## Resource
resource "azurerm_resource_group" "this" {
  name     = local.rs_name
  location = var.resource_group_location
}

## Data
data "azurerm_resource_group" "this" {
  name = "Terraform101-02-Basic-Commands"
}

## Outputs

output "Previous_section_rs_name" {
  value = azurerm_resource_group.this.name
}

output "Previous_section_rs_location" {
  value = azurerm_resource_group.this.location
}

output "localFileOutput" {
  value = local.localFile.myKey
}
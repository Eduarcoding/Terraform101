## Provider
provider "azurerm" {
  features {

  }
}

## Resource
resource "azurerm_resource_group" "this" {
  name     = local.rs_name
  location = var.resource_group_location

  tags = local.common_tags
}

resource "azurerm_service_plan" "this" {
  name                = "sp-${lower(var.environment)}"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  sku_name            = "B1"
  os_type             = "Linux"

  tags = local.common_tags
}

resource "azurerm_linux_web_app" "this" {
  name                = "appsvc-backend-${lower(var.environment)}"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  service_plan_id     = azurerm_service_plan.this.id

  app_settings = {
    "BlobStorageOptions__BlobStorageName"       = azurerm_storage_account.this.name
    "BlobStorageOptions__BlobStorageAccountKey" = azurerm_storage_account.this.primary_access_key

    "APPLICATIONINSIGHTS_CONNECTION_STRING" = azurerm_application_insights.this.connection_string
  }

  site_config {

  }

  tags = local.common_tags
}

resource "azurerm_application_insights" "this" {
  name                = "appinsights-${lower(var.environment)}"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  application_type    = "web"

  tags = local.common_tags
}

resource "random_integer" "this" {
  min = 1
  max = 50000
}
resource "azurerm_storage_account" "this" {
  name                     = "st${random_integer.this.result}${lower(var.environment)}"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.common_tags
}

resource "azurerm_storage_account_network_rules" "example" {
  storage_account_id = azurerm_storage_account.this.id
  default_action     = "Allow"
  ip_rules           = azurerm_linux_web_app.this.outbound_ip_address_list
  bypass             = ["Metrics"]
}
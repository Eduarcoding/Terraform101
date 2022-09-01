# 05-Simple-Scenario

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.7 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.20.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.20.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.4.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_application_insights.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/application_insights) | resource |
| [azurerm_linux_web_app.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/linux_web_app) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/resource_group) | resource |
| [azurerm_service_plan.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/service_plan) | resource |
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/storage_account) | resource |
| [azurerm_storage_account_network_rules.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/storage_account_network_rules) | resource |
| [random_integer.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | The environment of the deployment | `string` | n/a | yes |
| <a name="input_product_name"></a> [product\_name](#input\_product\_name) | The name of the product | `string` | `"No project"` | no |
| <a name="input_remote_state_container_name"></a> [remote\_state\_container\_name](#input\_remote\_state\_container\_name) | Name of the remote state storage account container. | `string` | n/a | yes |
| <a name="input_remote_state_resource_group_name"></a> [remote\_state\_resource\_group\_name](#input\_remote\_state\_resource\_group\_name) | Resource group where the remote state storage account is created. | `string` | n/a | yes |
| <a name="input_remote_state_storage_account_name"></a> [remote\_state\_storage\_account\_name](#input\_remote\_state\_storage\_account\_name) | Name of the remote state storage account. | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | (Required) The resource groups name. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group name. | `string` | `"Terraform101-05-Simple-Scenario"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_Previous_section_rs_location"></a> [Previous\_section\_rs\_location](#output\_Previous\_section\_rs\_location) | n/a |
| <a name="output_Previous_section_rs_name"></a> [Previous\_section\_rs\_name](#output\_Previous\_section\_rs\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

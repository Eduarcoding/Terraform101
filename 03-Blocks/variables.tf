## Inputs
variable "resource_group_name" {
  type        = string
  description = "The resource group name."
  default = "Terraform101-03-Blocks"

  validation {
    condition     = length(var.resource_group_name) > 4 && length(var.resource_group_name) > 16
    error_message = "The resource group name must have a length greater than 4 and lower than 16."
  }
}

variable "resource_group_location" {
  type        = string
  description = "(Required) The resource groups name."
  default = "West Europe"
}

variable "environment" {
  type = string
  description = "The environment of the deployment"

  validation {
    condition     = contains(["dev", "pre", "pro"], var.environment)
    error_message = "The environment value must be 'dev', 'pre' or 'pro'."
  }
}

variable "product_name" {
  type = string
  description = "The name of the product"
  default = "No project"
}
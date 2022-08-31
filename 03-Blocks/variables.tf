## Inputs
variable "resource_group_name" {
  type        = string
  description = "The resource group name."
  default = "Terraform101-03-Blocks"

  validation {
    condition     = length(var.resource_group_name) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
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

variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  required = false
}

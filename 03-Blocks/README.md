# 02-Block types
There are different types of objects in Terraform. The main used ones are: 

-Resource
-Data


## Resources

 Each resource block describes one or more infrastructure objects, such as virtual networks, compute instances, or higher-level components such as DNS records.

```
resource "azurerm_resource_group" "this" {
  name     = "myResourceGroup"
  location = "West Europe"
}
```

This block admits meta-arguments. These arguments are special ones that can be applied to every resource. Some relevant ones are: 

- depends_on: Explicit dependency
- count: Number of these resources that will be created
- for_each: Accepts an argument whose value is a map or a set of strings, Terraform will create one instance for each member of that map or set.
- provider: Which provider configuration to use for a resource, overriding Terraform's default behavior of selecting one based on the resource type name
- lifecycle: Accepts create_before_destroy, prevent_destroy, ignore_changes, and replace_triggered_by.

## Data
```
data "azurerm_resource_group" "this" {
  name = "existing"
}
```

The `terraform` block has multiple attributes. The following one will be fulfilled:

- required_providers: Used to specify the versions of the cloud providers used in this deployment. Multiple providers can be specified for the same or different cloud providers.
- required_version: Specifies the version of terraform that will be used to deploy. Check that the specified version is installed in your machine.

## Input Variables

Used to input information to the deployment in a dynamic way. They are typed and can be validated.

```
variable "resource_group_name" {
  type        = string
  description = "The resource group name."
  default = "Terraform101-03-Blocks"

  validation {
    condition     = length(var.resource_group_name) > 4 && length(var.resource_group_name) > 16
    error_message = "The resource group name must have a length greater than 4 and lower than 16."
  }
}
```

## Output

Used to output information from the resources. It can be output encoded as json.

It is widely used with modules. The sensitive property will prevent the value to appear in the logs.

```
output "database_admin_user_password" {
  value       = random.this.value
  description = "The password of the admin user of the database."
  sensitive   = true
}
```

## Locals
Used to define variables during the deployment.

```
locals {
  rs_name = "${var.resource_group_name}-${var.environment}"
  common_tags = {
    environment = var.environment
    product     = var.product_name
  }
}
```

## Test

To test the configuration we will create a resource group and retrieve information from a resource created in a different deployment with a 'data' block. 
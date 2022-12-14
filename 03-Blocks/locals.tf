
## Locals
locals {
  rs_name = "${var.resource_group_name}-${var.environment}"
  common_tags = {
    environment = var.environment
    product     = var.product_name
  }
  localFile = jsondecode(file("${path.module}/inputfiles/local-values.json"))
}
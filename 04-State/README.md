# 04 - State

- Check the dependency graph (connect resources, not connected, explicit depends_on)
- Import one of the resources created in the previous deployments
`terraform import azurerm_mssql_managed_instance.example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Sql/managedInstances/myserver`
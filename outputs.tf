output "resource_group_name" {
  value       = azurerm_resource_group.main.name
  description = "Nazwa grupy zasobow Azure"
}
output "storage_account_name" {
  value       = azurerm_storage_account.main.name
  description = "Nazwa storage account Azure"
}
output "storage_account_connection_string" {
  value       = azurerm_storage_account.main.primary_connection_string
  description = "Connection string do storage account Azure"
  sensitive   = true

}
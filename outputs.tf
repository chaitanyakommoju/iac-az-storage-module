output "storage_account_id" {
  description = "ID of the Storage Account"
  value       = azurerm_storage_account.this.id
}

output "storage_account_name" {
  description = "Name of the Storage Account"
  value       = azurerm_storage_account.this.name
}

output "container_id" {
  description = "ID of the Storage Container"
  value       = azurerm_storage_container.this.id
}

output "container_name" {
  description = "Name of the Storage Container"
  value       = azurerm_storage_container.this.name
}

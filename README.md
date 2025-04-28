# iac-az-blob-module
## `azurerm_storage_account` Resource

This resource creates an Azure Storage Account.

### Arguments

- **name**: The name of the storage account.
- **resource_group_name**: The name of the resource group in which the storage account will be created.
- **location**: The location where the storage account will be deployed.
- **account_tier**: The performance tier of the storage account (e.g., Standard, Premium).
- **account_replication_type**: The replication strategy for the storage account (e.g., LRS, GRS, RA-GRS).
- **account_kind**: The type of the storage account (e.g., StorageV2, BlobStorage).
- **access_tier**: The access tier for BlobStorage or StorageV2 accounts (e.g., Hot, Cool). This is only applicable if `account_kind` is set to "BlobStorage" or "StorageV2".
- **https_traffic_only_enabled**: Ensures that the storage account only allows HTTPS traffic (set to `true`).
- **tags**: Tags to apply to the storage account for resource management.

### Example Usage

```hcl
resource "azurerm_storage_account" "this" {
  name                       = var.storage_account_name
  resource_group_name        = var.resource_group_name
  location                   = var.location
  account_tier               = var.account_tier
  account_replication_type   = var.account_replication_type
  account_kind               = var.account_kind
  access_tier                = var.account_kind == "BlobStorage" || var.account_kind == "StorageV2" ? var.access_tier : null
  https_traffic_only_enabled = true
  tags                       = var.tags
}

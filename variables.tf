variable "storage_account_name" {
  description = "Name of the storage account."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Location of the storage account."
  type        = string
}

variable "account_tier" {
  description = "Storage account tier (Standard, Premium)."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Replication type (LRS, GRS, ZRS, RAGRS)."
  type        = string
  default     = "LRS"
}

variable "account_kind" {
  description = "Kind of storage account (BlobStorage, FileStorage, Storage, StorageV2)."
  type        = string
  default     = "StorageV2"
}

variable "access_tier" {
  description = "Access tier for BlobStorage and StorageV2 (Hot, Cool)."
  type        = string
  default     = "Hot"
}

variable "tags" {
  description = "Tags for the storage account."
  type        = map(string)
  default     = {}
}

variable "orgname" {
  description = "Organization Name"
  type        = string
}

variable "region" {
  description = "Azure Region"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

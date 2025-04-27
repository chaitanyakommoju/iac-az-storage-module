variable "storage_account_name" {
  description = "Name of the Storage Account"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "account_tier" {
  description = "Storage account tier"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Replication type"
  type        = string
  default     = "LRS"
}

variable "container_name" {
  description = "Name of the Blob Container"
  type        = string
}

variable "container_access_type" {
  description = "Access type of the Blob Container"
  type        = string
  default     = "private"
}

variable "tags" {
  description = "Tags to apply to resources"
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

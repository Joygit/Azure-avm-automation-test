variable "location" {
  type        = string
  description = "The Azure region where the Automation account will be deployed."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the Automation account will be deployed."
}

variable "resource_group_id" {
  type        = string
  description = "The ID of the resource group where the Automation account will be deployed."
}

variable "automation_account_name" {
  type        = string
  description = "The name of the Automation account to be created."
}

variable "automation_account_id" {
  type        = string
  description = "The ID of the Automation account to be created."
}

variable "sku_name" {
  type        = string
  description = "The SKU name for the Automation account. Possible values are 'Free' and 'Basic'."
  default     = "Basic"
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Indicates whether public network access is enabled for the Automation account."
  default     = true
}
variable "local_authentication_enabled" {
  type        = bool
  description = "Indicates whether local authentication is enabled for the Automation account."
  default     = false
}

variable "user_assigned_identity_id" {
  type        = string
  description = "The ID of the user-assigned managed identity to be associated with the Automation account."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the Automation account."
  default     = {}
}


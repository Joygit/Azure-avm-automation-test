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

#variable "automation_account_id" {
#  type        = string
#  description = "The ID of the Automation account to be created."
#}

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

variable "system_assigned_identity" {
  type = bool
  description = "Whether to enable System Assigned Managed Identity on the Automation Account."
  default = true  
}

variable "user_assigned_identity_ids" {
  type        = set(string)
  description = "The IDs of the user-assigned managed identities to be associated with the Automation account."
  default     = []
}

variable "automation_runbooks" {
  type        = map(object({
    name                = string    
    log_verbose         = optional(bool, false)
    log_progress        = optional(bool, false)
    description         = optional(string, null)
    content             = optional(string, "")
    runbook_type        = optional(string, "") # Possible values: PowerShell, PowerShellWorkflow, Graph, Python2, Python3
  }))
  description = "A list of runbooks to be created in the Automation account."
  default     = {}
}

variable "automation_hybrid_runbook_worker_groups" {
  type        = map(object({
    name        = string
    credential_name = optional(string, null)
  }))
  description = "A list of Hybrid Runbook Worker groups to be created in the Automation account."
  default     = {}
}


variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the Automation account."
  default     = {}
}


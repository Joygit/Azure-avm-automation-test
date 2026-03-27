output "automation_account_id" {
  description = "The ID of the created Automation account."
  value       = module.automation_account.resource_id
}

output "automation_account_name" {
  description = "The name of the created Automation account."
  value       = var.automation_account_name
}

output "automation_account_dsc_server_endpoint" {
  description = "DSC endpoint"
  value       = data.azurerm_automation_account.aa.dsc_server_endpoint
}

output "automation_account_dsc_primary_access_key" {
  description = "DSC primary key"
  value       = data.azurerm_automation_account.aa.dsc_primary_access_key
  sensitive   = true
}

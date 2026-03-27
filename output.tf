output "automation_account_id" {
  description = "The ID of the created Automation account."
  value       = module.automation_account.resource_id
}

output "automation_account_name" {
  description = "The name of the created Automation account."
  value       = module.automation_account.name
}

output "automation_account_dsc_server_endpoint" {
  description = "The DSC server endpoint of the created Automation account."
  value       = module.automation_account.resource.dsc_server_endpoint
}

output "automation_account_dsc_primary_access_key" {
  description = "The primary access key for the DSC server of the created Automation account."
  value       = module.automation_account.resource.dsc_primary_access_key
  sensitive   = true
}
module "automation_account" {
  source  = "Azure/avm-res-automation-automationaccount/azurerm"
  version = "0.2.0"

  name                = var.automation_account_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku                           = var.sku_name
  public_network_access_enabled = var.public_network_access_enabled
  local_authentication_enabled  = var.local_authentication_enabled


  managed_identities = {
    system_assigned = var.system_assigned_identity
    user_assigned_resource_ids = var.user_assigned_identity_ids
  }

  automation_runbooks = var.automation_runbooks
    
  automation_hybrid_runbook_worker_groups =  var.automation_hybrid_runbook_worker_groups

  tags = var.tags
}

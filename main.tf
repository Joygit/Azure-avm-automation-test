module "automation_account" {
  source  = "Azure/avm-res-automation-automationaccount/azurerm"
  version = "0.2.0"

  name                = var.automation_account_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku                           = var.sku_name
  public_network_access_enabled = var.public_network_access_enabled
  local_authentication_enabled  = var.local_authentication_enabled

  managed_identities = var.user_assigned_identity_id != null ? {
    system_assigned_identity  = false
    user_assigned_resource_id = [var.user_assigned_identity_id]
  } : {}
  tags = var.tags
}
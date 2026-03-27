terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hasicorp/azurerm"
      version = "~>2.2"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "~>2.2"
    }
  }
}
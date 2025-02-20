terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.6.0"
    }
  }
}

provider "azurerm" {
  resource_provider_registrations = "none"
  subscription_id                 = var.subscription_id
  tenant_id                       = var.tenant_id
  client_id                       = var.client_id
  client_secret                   = var.client_secret
  features {}
}

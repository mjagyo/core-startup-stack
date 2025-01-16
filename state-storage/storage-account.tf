resource "azurerm_storage_account" "core" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.core.name
  location                 = azurerm_resource_group.core.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "core" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.core.name
  container_access_type = "private"
}

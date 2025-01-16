resource "azurerm_service_plan" "demo" {
  name                = "${local.prefix}-asp"
  location            = var.region
  resource_group_name = data.azurerm_resource_group.demo.name
  os_type             = "Linux"
  sku_name            = "F1"
}

resource "azurerm_linux_web_app" "demo" {
  name                          = "${local.prefix}-service"
  location                      = var.region
  resource_group_name           = data.azurerm_resource_group.demo.name
  service_plan_id               = azurerm_service_plan.demo.id
  public_network_access_enabled = true
  https_only                    = true

  site_config {
    always_on = false
    application_stack {
      node_version = "20-lts"
    }
  }

  app_settings = {
    "SCM_DO_BUILD_DURING_DEPLOYMENT" = "true"
    "DATABASE_URL"                   = "postgresql://${azurerm_postgresql_flexible_server.demo.administrator_login}:${azurerm_postgresql_flexible_server.demo.administrator_password}@${azurerm_postgresql_flexible_server.demo.fqdn}/lucidapp"
    "PORT"                           = "3010"
  }
}

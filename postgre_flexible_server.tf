resource "azurerm_postgresql_flexible_server" "demo" {
  name                          = "${local.prefix}-psqlflexibleserver"
  location                      = var.region
  resource_group_name           = data.azurerm_resource_group.demo.name
  version                       = "16"
  public_network_access_enabled = true
  administrator_login           = "psqladmin"
  administrator_password        = "H@Sh1CoR3!"
  zone                          = "1"

  storage_mb   = 32768
  storage_tier = "P4"

  sku_name = "B_Standard_B1ms"
  #   SKU                Tier             VCore    Memory
  #   -----------------  ---------------  -------  --------
  #   Standard_B1ms      Burstable        1        2 GiB
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "demo" {
  name             = "${local.prefix}-psqlflexibleserver-fw"
  server_id        = azurerm_postgresql_flexible_server.demo.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "255.255.255.255"
}

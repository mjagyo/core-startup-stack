output "database_domain" {
    value = azurerm_postgresql_flexible_server.demo.fqdn
}

output "app_name" {
  value = azurerm_linux_web_app.demo.default_hostname
}

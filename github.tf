resource "azurerm_app_service_source_control" "source_control" {
  app_id                 = azurerm_linux_web_app.demo.id
  repo_url               = "https://github.com/${var.repository}.git"
  branch                 = "main"
  use_manual_integration = false
  use_mercurial          = false

  github_action_configuration {
    generate_workflow_file = true
    code_configuration {
      runtime_stack   = "node"
      runtime_version = "20.x"
    }
  }
}

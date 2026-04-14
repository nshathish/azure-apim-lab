resource "azurerm_service_plan" "main" {
  name                = "${var.project_prefix}-asp"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  os_type             = "Linux"
  sku_name            = var.app_service_plan_sku

  tags = {
    environment = var.environment
    project     = var.project_prefix
  }
}

resource "azurerm_linux_web_app" "main" {
  name                = "${var.project_prefix}-api"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  service_plan_id     = azurerm_service_plan.main.id

  site_config {
    application_stack {
      dotnet_version = "10.0"
    }
    always_on = false
  }

  tags = {
    environment = var.environment
    project     = var.project_prefix
  }
}

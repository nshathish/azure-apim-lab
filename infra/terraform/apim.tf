resource "azurerm_api_management" "main" {
  name                = "${var.project_prefix}-apim"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  publisher_name      = var.apim_publisher_name
  publisher_email     = var.apim_publisher_email
  sku_name            = "Consumption_0"

  tags = {
    environment = var.environment
    project     = var.project_prefix
  }
}

resource "azurerm_api_management_api" "main" {
  name                = "${var.project_prefix}-api"
  resource_group_name = azurerm_resource_group.main.name
  api_management_name = azurerm_api_management.main.name
  revision            = "1"
  display_name        = "ApimLab API"
  path                = "api"
  protocols           = ["https"]
  service_url         = "https://${azurerm_linux_web_app.main.default_hostname}"
}

resource "azurerm_api_management_product" "main" {
  product_id            = "${var.project_prefix}-product"
  resource_group_name   = azurerm_resource_group.main.name
  api_management_name   = azurerm_api_management.main.name
  display_name          = "ApimLab Product"
  subscription_required = true
  approval_required     = false
  published             = true
}

resource "azurerm_api_management_product_api" "main" {
  resource_group_name = azurerm_resource_group.main.name
  api_management_name = azurerm_api_management.main.name
  api_name            = azurerm_api_management_api.main.name
  product_id          = azurerm_api_management_product.main.product_id
}

resource "azurerm_api_management_subscription" "main" {
  resource_group_name = azurerm_resource_group.main.name
  api_management_name = azurerm_api_management.main.name
  product_id          = azurerm_api_management_product.main.id
  display_name        = "ApimLab Subscription"
  state               = "active"
}

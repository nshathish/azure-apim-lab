output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.main.name
}

output "resource_group_location" {
  description = "Location of the resource group"
  value       = azurerm_resource_group.main.location
}

output "app_service_name" {
  description = "Name of the App Service"
  value       = azurerm_linux_web_app.main.name
}

output "app_service_url" {
  description = "Default URL of the App Service"
  value       = "https://${azurerm_linux_web_app.main.default_hostname}"
}

output "apim_gateway_url" {
  description = "APIM gateway URL"
  value       = azurerm_api_management.main.gateway_url
}

output "apim_subscription_key" {
  description = "APIM subscription primary key"
  value       = azurerm_api_management_subscription.main.primary_key
  sensitive   = true
}

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
  sensitive   = true
}

variable "project_prefix" {
  description = "Prefix used for naming all resources"
  type        = string
  default     = "apimlab-nshathish"
}

variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "uksouth"
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "app_service_plan_sku" {
  description = "App Service Plan SKU (for example F1, B1, S1)."
  type        = string
  default     = "B1"
}

variable "apim_publisher_name" {
  description = "Publisher name for APIM"
  type        = string
  default     = "ApimLab"
}

variable "apim_publisher_email" {
  description = "Publisher email for APIM"
  type        = string
  default     = "nshathish@example.com"
}

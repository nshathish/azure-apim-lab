variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
  sensitive   = true
}

variable "project_prefix" {
  description = "Prefix used for naming all resources"
  type        = string
  default     = "apimlab"
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
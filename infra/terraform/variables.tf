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

terraform {
  required_version = ">= 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "learn-labs"
    storage_account_name = "apimlabstate"
    container_name       = "tfstate"
    key                  = "apimlab.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  use_oidc        = true
}

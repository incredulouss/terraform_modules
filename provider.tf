
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.51.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = ""
  #   storage_account_name = "var.storage_account_name"
  #   container_name       = ""
  #   key                  = "var.key"
  # }
}

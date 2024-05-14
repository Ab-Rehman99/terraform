terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.97.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = ""
  tenant_id       = ""
  client_id       = ""
  client_secret   = var.client_secret
}

resource "azurerm_resource_group" "application-rg" {
  location = var.resource_group_location
  name     = var.application_rg_name
}

data "azurerm_client_config" "current" {
}


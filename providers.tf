terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.107.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }

    azapi = {
      source  = "Azure/azapi"
      version = "1.14.0"
    }
  }

  backend "local" {}
  # backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

provider "azapi" {
  # Configuration options
}
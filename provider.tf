terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "kubernete"
    storage_account_name  = "tfstateterrafom"
    container_name        = "tfstate"
    key                   = "terraform-github-action.tfstate"
    // key                   = "jterraform.tfstate"
  }
}
provider "azurerm" {
  features {
  // skip_provider_registration = true
  resource_group {
    prevent_deletion_if_contains_resources = false
    }
  }
}

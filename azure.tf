terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.18.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "0ca097b8-df5d-406b-8155-a4c896584838"
  features {
      virtual_machine {
        delete_os_disk_on_deletion     = true
        graceful_shutdown              = false
        skip_shutdown_and_force_delete = true
      }
      log_analytics_workspace {
        permanently_delete_on_destroy = true
    } 
  }
}
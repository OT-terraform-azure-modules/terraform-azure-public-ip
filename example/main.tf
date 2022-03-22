# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.86.0"
    }
  }
}

provider "azurerm" {
  features {}
}


module "res_group" {
  source                  = "OT-terraform-azure-modules/resource-group/azure"
  resource_group_name     = "azure-rg"
  resource_group_location = "West Europe"
  lock_level_value        = ""
  tag_map = {
    Name = "AzureRG"
  }
}


module "public-ip_module" {
  source              = "git::https://github.com/OT-terraform-azure-modules/terraform-azure-public-ip.git?ref=v0.0.1"
  resource_group_name = module.res_group.resource_group_name
  location            = module.res_group.resource_group_location
  allocation_method   = "Dynamic"
  pub_ip_name         = ["pub1", "pub2"]
  sku                 = "Basic"
  tags = {
    env : ""
    author : ""
  }
}

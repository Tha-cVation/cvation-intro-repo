#Configure Terraform providers 
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    storage_account_name = var.azure_storage_account_name
    container_name       = var.azure_container_name
    key                  = var.azure_key
    resource_group_name  = var.azure_resouce_group_name
    subscription_id      = var.azure_subscription_id
    client_id            = var.azure_client_id
    client_secret        = var.azure_client_secret
    tenant_id            = var.azure_tenant_id
  }
}




provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.azure_resouce_group_name
  location = var.azure_location
}

resource "azurerm_service_plan" "app_service_plan" {
  name                = var.azure_app_service_plan_name
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "web_app" {
  name                = var.azure_web_app_name
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  service_plan_id     = azurerm_service_plan.app_service_plan.id

  site_config {}
}
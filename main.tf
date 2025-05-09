#Configure Terraform providers
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = "~> 1.11.4"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.azure_resouce_group_name
  location = var.azure_location
}

resource "azurerm_management_lock" "resource-group-lock" {
  name       = "resource-group-lock"
  scope      = azurerm_resource_group.resource_group.id
  lock_level = "CanNotDelete"
  notes      = "This resource group is read only and cannot be deleted."
}

resource "azurerm_service_plan" "app_service_plan" {
  name                   = var.azure_app_service_plan_name
  location               = azurerm_resource_group.resource_group.location
  resource_group_name    = azurerm_resource_group.resource_group.name
  os_type                = "Linux"
  sku_name               = "P1v2"
  zone_balancing_enabled = true
  worker_conut           = 2
  ftps_state = "FtpsOnly"
}

resource "azurerm_linux_web_app" "web_app" {
  name                = var.azure_web_app_name
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  service_plan_id     = azurerm_service_plan.app_service_plan.id
  client_cert_enabled = true
  http_only = true
  site_config {
    http2_enabled = true
    health_check_path = "/health"
  }
  auth_settings {
    enabled = true
  }
  logs {
    detailed_error_messages_enabled = true
    failed_request_tracing_enabled = true
  }
}
variable "azure_resouce_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "cvation-intro-resource-group"
}

variable "azure_location" {
  description = "Azure location for the resource group"
  type        = string
  default     = "West Europe"
}

variable "azure_app_service_plan_name" {
  description = "Name of the Azure App Service Plan"
  type        = string
  default     = "cvation-intro-app-service-plan"
}

variable "azure_web_app_name" {
  description = "Name of the Azure Web App"
  type        = string
  default     = "cvation-intro-web-app"
}

variable "azure_object_id" {
  description = "Object ID of the Azure AD user"
  type        = string
}
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

#input to Terraform backend on azure 
variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
  default     = "cvationintrostorageaccount"
}

variable "azure_storage_account_name" {
  description = "Name of the Azure container"
  type        = string
  default     = "cvationintrocontainername"
}

variable "azure_key" {
  description = "Name of the Azure key"
  type        = string
  default     = "cvationintrokey"
}

variable "azure_subscription_id" {
  description = "Azure subscription ID - passed from workflow"
  type        = string
}

variable "azure_client_id" {
  description = "Azure client ID - passed from workflow"
  type        = string
}

variable "azure_client_secret" {
  description = "Azure client secret - passed from workflow"
  type        = string
}

variable "azure_tenant_id" {
  description = "Azure tenant ID - passed from workflow"
  type        = string
}
 
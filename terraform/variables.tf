variable "resource_group_name" {
  default = "cvation-intro-terraform-resource-group"
  type    = string
}

variable "service_plan_name" {
  default = "cvation-intro-terraform-service-plan"
  type    = string
}

variable "webapp_name" {
  type    = string
}

variable "ARM_SUBSCRIPTION_ID" {
  type    = string
}

variable "ARM_CLIENT_ID" {
  type    = string
}

variable "ARM_CLIENT_SECRET" {
  type      = string
  sensitive = true
}

variable "ARM_TENANT_ID" {
  type    = string
}
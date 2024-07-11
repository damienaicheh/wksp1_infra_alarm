variable "environment" {
  description = "The environment deployed"
  type        = string
  default     = "dev"
  validation {
    condition     = can(regex("(dev|stg|prd)", var.environment))
    error_message = "The environment value must be a valid."
  }
}

variable "workspace" {
  type        = string
  default     = "wksp1"
  description = "The workspace name"
}

variable "application" {
  type        = string
  default     = "app1"
  description = "The application name"
}

variable "location" {
  type        = string
  default     = "northeurope"
  description = "The Azure region where the resources should be created"
}

variable "tags" {
  type        = map(any)
  description = "The custom tags for all resources"
  default     = {}
}

variable "resource_group_name_suffix" {
  type        = string
  description = "The suffix for the resource group name"
  default     = "01"
}
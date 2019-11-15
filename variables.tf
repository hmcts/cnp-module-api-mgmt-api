variable "api_mgmt_rg" {
  description = "Resource group that api management is in, e.g. core-infra-demo"
}

variable "api_mgmt_name" {
  description = "Name of the api management, e.g. core-infra-demo"
}

variable "product_id" {
  description = "The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created."
}

variable "revision" {
  description = "The Revision which is used for this API."
}

variable "swagger_url" {
  description = "Must be openapi v2, blocked on https://github.com/terraform-providers/terraform-provider-azurerm/issues/3203"
}

variable "protocols" {
  type        = "list"
  description = "supported protocols for the API, default is https only"
  default     = ["https"]
}

variable "service_url" {
  description = "The backend url that API management will point to, e.g. http://rpe-draft-store-aat.service.core-compute-aat.internal"
}

variable "name" {
  description = "Name of the API"
}
variable "path" {
  description = "Path of the API, e.g. /payments-api"
}
variable "display_name" {
  description = "Display name for the API, e.g. Payments API"
}

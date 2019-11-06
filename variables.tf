variable "api_mgmt_rg" {}

variable "api_mgmt_name" {}

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
  type    = "list"
  default = ["https"]
}


variable "name" {}
variable "path" {}
variable "display_name" {}

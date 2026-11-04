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
  description = "URL to the Swagger or Open API Spec"
}
variable "content_format" {
  default     = "swagger-link-json"
  description = "Format of the swagger_url"
  validation {
    condition     = contains(["openapi", "openapi+json", "openapi+json-link", "openapi-link", "swagger-json", "swagger-link-json", "wadl-link-json", "wadl-xml", "wsdl", "wsdl-link"], var.content_format)
    error_message = "Content Format possible values are openapi, openapi+json, openapi+json-link, openapi-link, swagger-json, swagger-link-json, wadl-link-json, wadl-xml, wsdl and wsdl-link."
  }
}

variable "protocols" {
  type        = list(any)
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

variable "api_description" {
  description = <<-EOT
    Description for the API, shown on the developer portal's API page. Null leaves it unset,
    which is what every caller got before this existed.

    The import block below fills this in from the specification when the API is created, and only
    then - the provider writes the resource's own attributes on every later apply, so an API
    created once and applied again loses the imported text unless it is passed here. Callers that
    already read the specification can pass info.description straight through.
  EOT
  default     = null
}

variable "subscription_required" {
  type        = bool
  description = "Is an Subscription Key Required? (Default: true)"
  default     = true
}

variable "api_type" {
  description = "Type of API. Possible values are graphql, http, soap, and websocket. (Default: http)"
  default     = "http"
  validation {
    condition     = contains(["graphql", "http", "soap", "websocket"], var.api_type)
    error_message = "API Type possible values are graphql, http, soap and websocket."
  }
}

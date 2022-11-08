resource "azurerm_api_management_api" "api" {
  name                  = var.name
  resource_group_name   = var.api_mgmt_rg
  api_management_name   = var.api_mgmt_name
  revision              = var.revision
  display_name          = var.display_name
  api_type              = var.api_type
  path                  = var.path
  protocols             = var.protocols
  service_url           = var.service_url
  subscription_required = var.subscription_required

  import {
    content_format = var.content_format
    content_value  = var.swagger_url
  }
}

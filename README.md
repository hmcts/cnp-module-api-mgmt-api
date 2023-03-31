# cnp-module-api-mgmt-api

A terraform module for creating an API in API mgmt

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_api_management_api.api](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management_api) | resource |
| [azurerm_api_management_product_api.link_to_product](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management_product_api) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_mgmt_name"></a> [api\_mgmt\_name](#input\_api\_mgmt\_name) | Name of the api management, e.g. core-infra-demo | `any` | n/a | yes |
| <a name="input_api_mgmt_rg"></a> [api\_mgmt\_rg](#input\_api\_mgmt\_rg) | Resource group that api management is in, e.g. core-infra-demo | `any` | n/a | yes |
| <a name="input_content_format"></a> [content\_format](#input\_content\_format) | Format of the swagger\_url | `string` | `"swagger-link-json"` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | Display name for the API, e.g. Payments API | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the API | `any` | n/a | yes |
| <a name="input_api_type"></a> [api\_type](#input\_api\_type) | Type of API | `any` | `"http"` | no |
| <a name="input_path"></a> [path](#input\_path) | Path of the API, e.g. /payments-api | `any` | n/a | yes |
| <a name="input_product_id"></a> [product\_id](#input\_product\_id) | The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created. | `any` | n/a | yes |
| <a name="input_protocols"></a> [protocols](#input\_protocols) | Supported protocols for the API, default is https only | `list(any)` | <pre>[<br>  "https"<br>]</pre> | no |
| <a name="input_revision"></a> [revision](#input\_revision) | The Revision which is used for this API. | `any` | n/a | yes |
| <a name="input_service_url"></a> [service\_url](#input\_service\_url) | The backend url that API management will point to, e.g. http://rpe-draft-store-aat.service.core-compute-aat.internal | `any` | n/a | yes |
| <a name="input_subscription_required"></a> [subscription\_required](#input\_subscription\_required) | Is an Subscription Key Required? (Default: true) | `bool` | `true` | no |
| <a name="input_swagger_url"></a> [swagger\_url](#input\_swagger\_url) | URL to the Swagger or Open API Spec | `any` | n/a | yes |
| <a name="input_api_type"></a> [api\_type](#input\_api\_type) | Type of API. Possible values are graphql, http, soap, and websocket. (Default: http) | `string` | `"http"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | Name of the API, useful for linking modules together |

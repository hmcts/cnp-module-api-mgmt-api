## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| api\_mgmt\_name | Name of the api management, e.g. core-infra-demo | string | n/a | yes |
| api\_mgmt\_rg | Resource group that api management is in, e.g. core-infra-demo | string | n/a | yes |
| display\_name | Display name for the API, e.g. Payments API | string | n/a | yes |
| name | Name of the API | string | n/a | yes |
| path | Path of the API, e.g. /payments-api | string | n/a | yes |
| product\_id | The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created. | string | n/a | yes |
| protocols |  | list | `<list>` | no |
| revision | The Revision which is used for this API. | string | n/a | yes |
| service\_url | The backend url that API management will point to, e.g. http://$${var.product}-$${var.component}-$${var.env}.service.core-compute-$${var.env}.internal | string | n/a | yes |
| swagger\_url | Must be openapi v2, blocked on https://github.com/terraform-providers/terraform-provider-azurerm/issues/3203 | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| name | Name of the API, useful for linking modules together |


## Inputs

| Name | Description | Type | Default |
|------|-------------|:----:|:-----:|
| api\_mgmt\_name | Name of the api management, e.g. core-infra-demo | string | n/a |
| api\_mgmt\_rg | Resource group that api management is in, e.g. core-infra-demo | string | n/a |
| display\_name | Display name for the API, e.g. Payments API | string | n/a |
| name | Name of the API | string | n/a |
| path | Path of the API, e.g. /payments-api | string | n/a |
| product\_id | The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created. | string | n/a |
| protocols |  | list | `<list>` |
| revision | The Revision which is used for this API. | string | n/a |
| service\_url | The backend url that API management will point to, e.g. http://rpe-draft-store-aat.service.core-compute-aat.internal | string | n/a |
| swagger\_url | Must be openapi v2, blocked on https://github.com/terraform-providers/terraform-provider-azurerm/issues/3203 | string | n/a |

## Outputs

| Name | Description |
|------|-------------|
| name | Name of the API, useful for linking modules together |


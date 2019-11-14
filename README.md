## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| api\_mgmt\_name |  | string | n/a | yes |
| api\_mgmt\_rg |  | string | n/a | yes |
| display\_name |  | string | n/a | yes |
| name |  | string | n/a | yes |
| path |  | string | n/a | yes |
| product\_id | The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created. | string | n/a | yes |
| revision | The Revision which is used for this API. | string | n/a | yes |
| service\_url |  | string | n/a | yes |
| swagger\_url | Must be openapi v2, blocked on https://github.com/terraform-providers/terraform-provider-azurerm/issues/3203 | string | n/a | yes |
| protocols |  | list | `[ "https" ]` | no |

## Outputs

| Name | Description |
|------|-------------|
| name |  |


resource "azurerm_api_management_product_api" "link_to_product" {
  api_name            = "${var.name}"
  api_management_name = "${var.api_mgmt_name}"
  resource_group_name = "${var.api_mgmt_rg}"

  product_id          = "${var.product_id}"

  count = "${var.product_id != "" ? 1 : 0}"
}
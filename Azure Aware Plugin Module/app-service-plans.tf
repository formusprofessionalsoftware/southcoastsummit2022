resource "azurerm_service_plan" "main-plan" {
  name                = "MAIN-APP-PLAN"
  location            = var.region
  resource_group_name = var.resource-group-name
  os_type             = "Windows"
  sku_name            = var.main-app-plan-size
}
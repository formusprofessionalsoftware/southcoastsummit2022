resource "azurerm_windows_function_app" "plugin-function" {
  name                       = "PLUGIN-FUNCTION"
  location                   = var.region
  resource_group_name        = var.resource-group-name
  service_plan_id        = azurerm_service_plan.main-plan.id
  storage_account_name       = azurerm_storage_account.main-function-storage.name
  storage_account_access_key = azurerm_storage_account.main-function-storage.primary_access_key
  site_config {}
  app_settings = {
    "serviceBusConnectionString" = azurerm_servicebus_namespace.plugin-context-service-bus-namespace.default_primary_connection_string
  }
}

resource "azurerm_storage_account" "main-function-storage" {
  name                     = "mainfunctionstorage"
  resource_group_name      = var.resource-group-name
  location                 = var.region
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
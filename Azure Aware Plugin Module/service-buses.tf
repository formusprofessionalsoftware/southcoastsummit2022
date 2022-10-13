resource "azurerm_servicebus_namespace" "plugin-context-service-bus-namespace" {
  name                = "plugincontextservicebusnamespace"
  location            = var.region
  resource_group_name = var.resource-group-name
  sku                 = "Basic"
}

resource "azurerm_servicebus_queue" "plugin-context-queue" {
  name         = "plugin-context"
  namespace_id = azurerm_servicebus_namespace.plugin-context-service-bus-namespace.id
}
resource "azurerm_container_registry" "acr" {
  name                = format("redisgeek%s", random_string.resource_group_name.result)
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  sku                 = "Premium"
  admin_enabled       = false
}

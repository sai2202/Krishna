###################################
# Creating servicebus namespace
###################################
resource "azurerm_servicebus_namespace" "sb" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  capacity            = var.capacity
  # tags                = var.tags
}


############ Creating namespace_authorization_rule ################################################
resource "azurerm_servicebus_namespace_authorization_rule" "sbnsar" {
  name                = "${var.name}-ar"
  resource_group_name = var.resource_group_name
  namespace_name      = azurerm_servicebus_namespace.sb.name
  listen              = var.listen
  send                = var.send
  manage              = var.manage
  depends_on          = [azurerm_servicebus_namespace.sb]
}


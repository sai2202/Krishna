output "id" {
  description = "The ID of the servicebus_namespace."
  value       = azurerm_servicebus_namespace.sb.id
  sensitive   = true
}

output "name" {
  description = "Name of servicebus_namespace created."
  value       = azurerm_servicebus_namespace.sb.name
  sensitive   = true
}

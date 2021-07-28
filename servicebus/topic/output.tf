output "id" {
  description = "The ID of the servicebus_topic."
  value       = azurerm_servicebus_topic.sbt.id
  sensitive   = true
}

output "name" {
  description = "Name of servicebus_topic created."
  value       = azurerm_servicebus_topic.sbt.name
  sensitive   = true
}

output "primary_connection_string" {
  description = "Name of servicebus_topic created."
  value       = azurerm_servicebus_topic_authorization_rule.sbtar.primary_connection_string
  sensitive   = true
}

output "secondary_connection_string" {
  description = "Name of servicebus_topic created."
  value       = azurerm_servicebus_topic_authorization_rule.sbtar.secondary_connection_string
  sensitive   = true
}

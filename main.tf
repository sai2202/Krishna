

##############  azurerm provider  ######################################
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.99.0"
    }
  }
}


provider "azurerm" {
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  #   client_id       = var.client_id
  #   client_secret   = var.client_secret

  features {
  }
}

###################

locals {

  action_group = jsondecode(file("${path.module}/actiongroup.json"))
  resource = {
  for list in local.action_group : list.type => list
  }
}
############################
##########  Creating ResourceGroup   #######################
resource "azurerm_resource_group" "rg" {
  name     = "test"
  location = "eastus
}
##################################

resource "azurerm_monitor_action_group" "monitor_action_group" {
  for_each            = local.resource
  name                = "test-${each.value.type}"
  resource_group_name = azurerm_resource_group.rg.name
  short_name          = "short-alert"

  dynamic "email_receiver" {
    for_each = each.value.type
    content {
      name                    = "Email"
      email_address           = email_receiver.value.primary_support # here it is not working 
      use_common_alert_schema = true #Enables or disables the common alert schema
    }
  }
}

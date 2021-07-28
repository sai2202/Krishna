variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "sku" {
  type = string
}

variable "capacity" {
  type = string
}

variable "ignore_missing_vnet_service_endpoint" {
  type    = string
  default = "false"
}

variable "listen" {
  type    = string
  default = "true"
}

variable "send" {
  type    = string
  default = "true"
}

variable "manage" {
  type    = string
  default = "false"
}



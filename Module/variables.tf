variable "resource_group_name" {
  default = "FirstResourceGroup"
}

variable "resource_group_location" {
  default = "North Europe"
}

variable "virtual_network" {
    default = "FirstVnet"
}

variable "address_space" {
    default = "10.0.0.0/16"
}

variable "subnet_name" {
  default = ["firstsubnet", "secondsubnet", "thirdsubnet" ]
}

variable "subnet_prefix" {
    default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
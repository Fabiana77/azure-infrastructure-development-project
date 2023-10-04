variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
}

variable "location" {
  type = string 
  description = "The Azure Region in which all resources in this example should be created."
  default = "South Central US "
}

variable "countVM" {
  description = "Total number of Virtual Machines to create"
  default = 3
}

variable "username" {
  description = "The username for the Virtual Machine Resources"
  default = "azure_user"
}

variable "password" {
  description = "The password used for the Virtual Machine Resources"
  default = "TestPassword123"
}

variable "resource_gn" {
  type = string
  description = "The name of the resource group in which the resources are created"
  default = "Azuredevops"
}

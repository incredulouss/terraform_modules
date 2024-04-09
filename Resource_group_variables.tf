## Resource Group Variables
variable "RG_Name" {
  type        = string
  default     = ""
  description = "name of resource group of Dev Enviroenmnet"
}

variable "RG_location" {
  type        = string
  default     = ""
  description = "Location of resource group of Dev Enviroenmnet"
}

variable "deploy_resource_group" {
  type = bool
  default = false  
}
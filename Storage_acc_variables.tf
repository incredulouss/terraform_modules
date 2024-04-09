
##Storage Account Variables
variable "storage_acc_name" {
  type        = string
  default     = ""
  description = "name of Stoarge Account Enviroenmnet"
}

variable "storage_acc_location" {
  type        = string
  default     = ""
  description = "Location of resource group of Dev Enviroenmnet"
}

variable "resource_group_tags" {
  description = "Tags to set for all Resource Group"
  type        = map(string)
  default     = {}
}

variable "storage_acc_kind" {
  type        = string
  default     = "StorageV2" 
}

variable "storage_acc_account_tier" {
    type = string
    default = "Standard"
}

variable "storage_tags" {
    description = "Tags to set for all storage Account"
    type        = map(string)
    default     = {
    project     = "",
    environment = "dev",
    owner       = "volvo"
    }
}

variable "is_hns_enabled" {
    type = bool
    default = true
}

variable "replication" {
    type = string
    default = "GRS" 
}

variable "enable_https_traffic_only" {
    type = bool
    default = true
}

variable "allow_nested_items_to_be_public" {
    type = bool
    default = false
}

variable "public_network_access_enabled" {
    type = bool
    default = false
}

variable "deploy_storage_acc" {
  type = bool
  default = false  
}
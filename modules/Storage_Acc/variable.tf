
variable "storage_acc_name" {
    type = string
    default = ""
    description = "default"
}

variable "RG_Name" {
    type    = string
    default = ""
}

variable "location" {
    type = string
    default = ""
    description = "West Europe"
}

variable "account_tier" {
    type = string
    default = "Standard"
}

variable "replication" {
    type = string
    default = "GRS" 
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

variable "account_kind" {
    type = string
    default = "StorageV2"
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

variable "is_hns_enabled" {
    type = bool
    default = true
}

variable "deploy_storage_acc" {
  type = bool
  default = false  
}
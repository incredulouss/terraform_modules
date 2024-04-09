variable "subscription_id" {
  type        = string
  description = "subscription Value"
  default     = ""
}
variable "client_id" {
  type        = string
  description = "client_id Value"
  default     = ""
}
variable "client_secret" {
  type        = string
  description = "client_secret Value"
  default     = ""
}
variable "tenant_id" {
  type        = string
  description = "tenant_id Value"
  default     = ""
}

variable "state_file_location" {
  type = string
  description = "Path of State File"
  default     = ""
}

variable "resource_group_name" {
  type = string
  description = "state file storage account"
  default     = ""
}

variable "storage_account_name" {
  type = string
  description = "state file storage account"
  default     = ""
}

variable "container_name" {
  type = string
  description = "state file container"
  default     = ""
}

variable "key" {
  type = string
  description = "state file name"
  default     = ""
}



variable "sqlServer_name" {
    type = string
    default = ""
}

variable "RG_Name" {
    type    = string
    default = ""
}

variable "location" {
    type = string
    default = ""
    description = "Location of Storage Account"
}

variable "sql_version" {
    type = string
    default = "12.0"
}

variable "admin-username" {
  description = "Username for SQL Server administrator account"
  type        = string
  default     = "sqladmin"
}

variable "admin-password" {
  description = "Password for SQL Server administrator account"
  type        = string
  default     = "S3cur3Acc3ss67"
}

# prefix 
variable "prefix" {
  type    = string
  default = "sql"
}

# app name 
variable "app_name" {
  type        = string
  default = "aiw"
}



# subnet name 
variable "subnetname" {
  type        = string
  default = "snet-weu-app-5214-nonprod-002"
}


variable "environment" {
  type        = string
  description = "This variable defines the environment to be built"
  default = "dev"
}

##SQL DB Details
variable "sql_db_name" {
  type        = string
  description = "SQL Db name"
  default     = "" 
}

variable "sql_tags" {
  description = "Tags to set for all sql"
  type        = map(string)
  default     = {
    Enviroenmnet = "Dev"
  }
}

variable "nsg_name" {
  type        = string
  description = "NSG name"
  default     = "example-security-group" 
}

variable "Vnet_name" {
  type        = string
  description = "Vnet name"
  default     = "vnet-cop-volvo-dev" 
}

variable "vnet_address" {
  type = string
  default = "10.0.0.0/16"
}

variable "subnet_name" {
  type        = string
  description = "subnet name"
  default     = "sb-cop-volvo-dev" 
}

variable "subnet_address" {
  type = string
  default = "10.0.1.0/24"
}

variable "deploy_sql_server" {
  type = bool
  default = false  
}

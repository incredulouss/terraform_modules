

variable "resource_group_name" {
    type = string
    default = ""  
}

variable "resource_group_location" {
    type = string
    default = ""  
}

variable "data_factory_tags" {
  description = "Tags to set for all storage Account"
  type        = map(string)
  default     = {
    AppID="APP-5214",
    owner-appid="app-5214"
  }
}

variable "adf_name" {
    type     = string
    default  = "test"
}

variable "deploy_data_factory" {
  type = bool
  default = false  
}


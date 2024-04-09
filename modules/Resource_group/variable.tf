
variable "RG_name" {
  type    = string
  default = "example"
}

variable "location" {
  type = string
  description = "Location of RG"
}

variable "resource_group_tags" {
  description = "Tags to set for all Resource group"
  type        = map(string)
  default     = {
    AppID="APP-5214",
    owner-appid="app-5214"
  }
}

variable "deploy_resource_group" {
  type = bool
  default = false  
}
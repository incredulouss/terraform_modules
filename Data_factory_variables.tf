
##Azure Data Factory Variables
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
    default  = ""
}

variable "deploy_data_factory" {
  type = bool
  default = false  
}
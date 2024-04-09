############################### AKS CLuster Variables #######
variable "dev-aks-cluster" {
  type        = string
  default     = ""
  description = "name of aks cluster of Dev Enviroenmnet"
}

variable "acr-name" {
  type        = string
  default     = ""
  description = "name of acr registry of Dev Enviroenmnet"
}
//Agent Pool configuration 
variable "agnet_pool_name" {
  type    = string
  default = "agentpool_dev_westeurope"
}
variable "pool_count" {
  type    = number
  default = 3
}
variable "vm_size" {
  type    = string
  default = "Standard_A2m_v2"
}
variable "os_sku" {
  type    = string
  default = "Ubuntu"
}
variable "vnet_subnet_id" {
  type    = string
  default = ""
}
variable "type" {
  type    = string
  default = "VirtualMachineScaleSets"
}
variable "max_pods" {
  type    = number
  default = 30
}
variable "os_disk_size_gb" {
  type    = number
  default = 30
}
variable "availability_zones" {
  description = "A list of availability zones for the AKS agent pool"
  type        = list(string)
  default     = ["1", "2", "3"]
}

variable "Enviroenmnet_tag" {
  default = "Dev"
}

variable "deploy_AKS_Cluster" {
  type = bool
  default = false  
}
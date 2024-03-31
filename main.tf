
provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id            = var.subscription_id
  client_id                  = var.client_id
  client_secret              = var.client_secret
  tenant_id                  = var.tenant_id
}

module "resourceGroup" {
  source = "./modules/Resource_group"
  base_name = "example01"
  location = "West Europe"
}

module "AKS_Cluster" {
  source = "./modules/aks_cluster"
  devRGName = module.resourceGroup.name
  location = var.devRGlocation
  dev-aks-cluster  = var.dev-aks-cluster
  agnet_pool_name  = var.agnet_pool_name
  pool_count       = var.pool_count
  vm_size          = var.vm_size
  os_sku           = var.os_sku
  vnet_subnet_id   = var.vnet_subnet_id
  os_disk_size_gb  = var.os_disk_size_gb
  type             = var.type
  max_pods         = var.max_pods
  Enviroenmnet_tag = var.Enviroenmnet_tag

}

# output "client_certificate" {
#   value     = azurerm_kubernetes_cluster.dev-aks-cluster.kube_config.0.client_certificate
#   sensitive = true
# }

# output "kube_config" {
#   value = azurerm_kubernetes_cluster.dev-aks-cluster.kube_config_raw

#   sensitive = true
# }

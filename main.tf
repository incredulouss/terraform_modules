
provider "azurerm" {
  features {}
  skip_provider_registration      = true
  subscription_id                 = var.subscription_id
  client_id                       = var.client_id
  client_secret                   = var.client_secret
  tenant_id                       = var.tenant_id
}

module "resourceGroup" {
  source                          = "./modules/Resource_group"
  count                           = var.deploy_resource_group==false ? 0 : 1
  deploy_resource_group           = var.deploy_resource_group
  RG_name                         = var.RG_Name
  location                        = var.RG_location
  resource_group_tags             = var.resource_group_tags
}

module "storageAccount" {
  source = "./modules/Storage_Acc"
  count                            = var.deploy_storage_acc==false ? 0 : 1
  deploy_storage_acc               = var.deploy_storage_acc
  storage_acc_name                 = var.storage_acc_name
  RG_Name                          = var.RG_Name
  location                         = var.RG_location
  account_kind                     = var.storage_acc_kind
  account_tier                     = var.storage_acc_account_tier
  is_hns_enabled                   = var.is_hns_enabled
  replication                      = var.replication
  enable_https_traffic_only        = var.enable_https_traffic_only
  allow_nested_items_to_be_public  = var.allow_nested_items_to_be_public
  public_network_access_enabled    = var.public_network_access_enabled
  storage_tags                     = var.storage_tags
}

module "DataFactory" {
  source                           = "./modules/Data_factory"
  count                            = var.deploy_data_factory==false ? 0 : 1
  adf_name                         = var.adf_name
  resource_group_location          = var.RG_location
  resource_group_name              = var.RG_Name
  data_factory_tags                = var.data_factory_tags
}

module "AzureSQLServer" {
  count                            = var.deploy_sql_server==false ? 0 : 1
  source                           = "./modules/sql_db"
  deploy_sql_server                = var.deploy_sql_server
  sqlServer_name                   = var.sqlServer_name
  RG_Name                          = var.RG_Name
  location                         = var.RG_location
  sql_version                      = var.sql_version
  admin-username                   = var.admin-username
  admin-password                   = var.admin-password
  sql_tags                         = var.sql_tags
  sql_db_name                      = var.sql_db_name
  nsg_name                         = var.nsg_name
  Vnet_name                        = var.Vnet_name
  vnet_address                     = var.vnet_address
  subnet_name                      = var.subnet_name
  subnet_address                   = var.subnet_address 
}

module "AKS_Cluster" {
  source                           = "./modules/aks_cluster"
  count                            = var.deploy_AKS_Cluster==false ? 0 : 1
  deploy_AKS_Cluster               = var.deploy_AKS_Cluster
  devRGName                        = var.RG_Name
  location                         = var.RG_location
  dev-aks-cluster                  = var.dev-aks-cluster
  agnet_pool_name                  = var.agnet_pool_name
  pool_count                       = var.pool_count
  vm_size                          = var.vm_size
  os_sku                           = var.os_sku
  vnet_subnet_id                   = var.vnet_subnet_id
  os_disk_size_gb                  = var.os_disk_size_gb
  type                             = var.type
  max_pods                         = var.max_pods
  Enviroenmnet_tag                 = var.Enviroenmnet_tag
}


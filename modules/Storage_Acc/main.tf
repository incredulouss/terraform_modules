

#Create Storage Account & Container
resource "azurerm_storage_account" "adf_stg" {
    
    name                     = var.storage_acc_name
    resource_group_name      = var.RG_Name
    location                 = var.location
    account_kind             = var.account_kind
    account_tier             = var.account_tier
    is_hns_enabled           = var.is_hns_enabled
    account_replication_type = var.replication
    enable_https_traffic_only       = var.enable_https_traffic_only
    allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
    public_network_access_enabled   = var.public_network_access_enabled
    tags = var.storage_tags
}
# Create Resource Group
# resource "azurerm_resource_group" "adf_rg" {
#     name     = var.resource_group_name
#     location = var.resource_group_location
#     tags     = var.data_factory_tags
# }

# module "storageAccount" {
#   source     = ""
#   RG_name    = var.resource_group_name
#   location   = var.resource_group_location
#   tags       = var.data_factory_tags
# }


#Create Storage Account & Container
# resource "azurerm_storage_account" "adf_stg" {
#     name                     = "adfstgdevcorpprincepoc"
#     resource_group_name      = azurerm_resource_group.adf_rg.name
#     location                 = azurerm_resource_group.adf_rg.location
#     account_kind             = "StorageV2"
#     account_tier             = "Standard"
#     is_hns_enabled           = "true"
#     account_replication_type = "LRS"
#     enable_https_traffic_only       = true
#     allow_nested_items_to_be_public = false
#     public_network_access_enabled   = false
#     tags = var.data_factory_tags
# }

# data "azurerm_resource_group" "existing_RG" {
#   # count                           = var.deploy_resource_group==false ? 1 : 0
#   name = var.resource_group_name
# }
# Create Azure Data Factory
resource "azurerm_data_factory" "adf" {
    name                = var.adf_name
    location            = var.resource_group_location
    resource_group_name = var.resource_group_name
    tags = var.data_factory_tags
}

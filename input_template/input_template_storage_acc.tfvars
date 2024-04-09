# subscription_id = ""
# client_id       = ""
# client_secret   = ""
# tenant_id       = ""

subscription_id                  = "cab55b56-b5a7-4443-a247-e79699aad39a"
client_id                        = "c12a66b7-1d8b-4a40-8312-5517387372e5"
client_secret                    = "ScF8Q~Tp2EYqqVgvBvTLSL7G9k-Yw0d6sl0IRdiT"
tenant_id                        = "d043ce72-ba03-4c71-9752-8182ccd05df9"


##Storage Account Variables
deploy_storage_acc               = true

storage_acc_name                 = "sacorpvolvodeveus"
storage_acc_location             = "East US"
storage_acc_kind                 = "StorageV2"
storage_acc_account_tier         = "Standard"
is_hns_enabled                   = true
replication                      = "GRS" 
enable_https_traffic_only        = true
allow_nested_items_to_be_public  = false
public_network_access_enabled    = false
storage_tags                     = {
  project     = "project-alpha",
  environment = "dev",
  owner       = "me@example.com"
}
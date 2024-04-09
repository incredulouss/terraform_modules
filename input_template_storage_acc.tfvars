# subscription_id = ""
# client_id       = ""
# client_secret   = ""
# tenant_id       = ""

##Storage Account Variables
deploy_storage_acc               = true
#Make this variable true to deploy a new Resource Group, else false if RG already exists
deploy_resource_group            = false

RG_Name       = "rg04-corp-volvo-dev-eus"
RG_location   = "East US"

#Skip these variables incase new Resource group is not created
resource_group_tags = {
  project     = "project-alpha",
  environment = "dev",
  owner       = "me@example.com"
}

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
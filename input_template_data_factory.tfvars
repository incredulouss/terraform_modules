# subscription_id = ""
# client_id       = ""
# client_secret   = ""
# tenant_id       = ""


##Azure Data Factory Variables
deploy_data_factory = true
#Make this variable true to deploy a new Resource Group, else false if RG already exists
deploy_resource_group = false

#Skip these variables incase new Resource group is not created
RG_Name       = "rg03-corp-volvo-dev-eus"
RG_location   = "East US"

resource_group_tags = {
  project     = "project-alpha",
  environment = "dev",
  owner       = "me@example.com"
}

adf_name            = "adf01-corp-volvo-dev-eus"
data_factory_tags   = {
  project     = "project-alpha",
  environment = "dev",
  owner       = "me@example.com"
}


# subscription_id = ""
# client_id       = ""
# client_secret   = ""
# tenant_id       = ""


##Azure SQL Server Variables
deploy_sql_server                = true
#Make this variable true to deploy a new Resource Group, else false if RG already exists
deploy_resource_group            = false

RG_Name       = "rg03-corp-volvo-dev-eus"
RG_location   = "East US"

#Skip these variables incase new Resource group is not created
resource_group_tags = {
  project     = "project-alpha",
  environment = "dev",
  owner       = "me@example.com"
}

sqlServer_name                   = "sqlserver01-corp-volvo-dev-weu"
sql_version                      = "12.0"
admin-username                   = "sqladmin"
admin-password                   = "S3cur3Acc3ss67"
sql_tags                         = {
    Enviroenmnet = "Dev"
  }
sql_db_name                      = "sqldb01-dev-weu"
nsg_name                         = "nsg01-corp-volvo-dev-weu"
Vnet_name                        = "vnet01-corp-volvo-dev-weu"
vnet_address                     = "10.0.0.0/16"
subnet_name                      = "sb01-corp-volvo-dev-weu"
subnet_address                   = "10.0.1.0/24"

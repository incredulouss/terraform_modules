# subscription_id = ""
# client_id       = ""
# client_secret   = ""
# tenant_id       = ""

subscription_id                  = "cab55b56-b5a7-4443-a247-e79699aad39a"
client_id                        = "c12a66b7-1d8b-4a40-8312-5517387372e5"
client_secret                    = "ScF8Q~Tp2EYqqVgvBvTLSL7G9k-Yw0d6sl0IRdiT"
tenant_id                        = "d043ce72-ba03-4c71-9752-8182ccd05df9"


##Azure SQL Server Variables
deploy_sql_server                = true

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

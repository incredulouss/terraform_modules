
# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = "3.21.0"
#     }
#   }
# }

#######################
## SQL Server - Main ##
#######################
#Vnet and Subnet details
# resource "azurerm_network_security_group" "example" {
#   name                = var.nsg_name
#   location            = var.location
#   resource_group_name = var.RG_Name
# }

# resource "azurerm_virtual_network" "example" {
#   name                = var.Vnet_name
#   location            = var.location
#   resource_group_name = var.RG_Name
#   address_space       = [var.vnet_address]
#   dns_servers         = ["10.0.0.4", "10.0.0.5"]

#   subnet {
#     name           = var.subnet_name
#     address_prefix = var.subnet_address
#   }

# }

# Create the SQL Server 
resource "azurerm_mssql_server" "sql-server" {
  
  name                          = var.sqlServer_name
  resource_group_name           = var.RG_Name
  location                      = var.location
  version                       = var.sql_version
  administrator_login           = var.admin-username
  administrator_login_password  = var.admin-password
  public_network_access_enabled = false
  tags = var.sql_tags
}

# Create a the SQL database 
resource "azurerm_sql_database" "sql-db" {
  
  depends_on = [azurerm_mssql_server.sql-server]

  name                = var.sql_db_name
  resource_group_name = var.RG_Name
  location            = var.location
  server_name         = azurerm_mssql_server.sql-server.name
  edition             = "Standard"
  collation           = "Latin1_General_CI_AS"
  max_size_bytes      = "10737418240"
  zone_redundant      = false
  read_scale          = false
  tags = var.sql_tags
}

########################
## Network - Endpoint ##
########################

# Create a DB Private Endpoint

# data "azurerm_subnet" "subnet" {
#   name                 = var.subnet_name
#   virtual_network_name = var.Vnet_name
#   resource_group_name  = var.RG_Name
# }

# resource "azurerm_private_endpoint" "db-endpoint" {
#   depends_on = [azurerm_mssql_server.sql-server]

#   name                = "${var.prefix}-${var.environment}-${var.app_name}-db-endpoint"
#   location            = var.location
#   resource_group_name = var.RG_Name
#   subnet_id           = data.azurerm_subnet.subnet.id

#   private_service_connection {
#     name                           = "${var.prefix}-${var.environment}-${var.app_name}-db-endpoint"
#     is_manual_connection           = "false"
#     private_connection_resource_id = azurerm_mssql_server.sql-server.id
#     subresource_names              = ["sqlServer"]
#   }
# }

# # DB Private Endpoint Connection
# data "azurerm_private_endpoint_connection" "endpoint-connection" {
#   depends_on = [azurerm_private_endpoint.db-endpoint]

#   name                = azurerm_private_endpoint.db-endpoint.name
#   resource_group_name = var.RG_Name
# }




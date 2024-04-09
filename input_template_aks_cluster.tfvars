# subscription_id = ""
# client_id       = ""
# client_secret   = ""
# tenant_id       = ""

#Make this variable true to deploy AKS Cluster
deploy_AKS_Cluster               = false
#Make this variable true to deploy a new Resource Group, else false if RG already exists
deploy_resource_group            = false

RG_Name       = "rg01-corp-volvo-dev-eus"
RG_location   = "East US"

#Skip these variables incase new Resource group is not created
resource_group_tags = {
  project     = "project-alpha",
  environment = "dev",
  owner       = "me@example.com"
}


##Azure Kubernetes cluster variables
dev-aks-cluster = "aksdev"
acr-name        = "devreg"
//Agent Pool configuration 
agnet_pool_name = "agentpool_dev_westeurope"
pool_count      = 1
vm_size         = "Standard_B1s"
os_sku          = "Ubuntu"
#vnet_subnet_id  = "xxxxxxxxxx"
type = "VirtualMachineScaleSets"
#availability_zones = ["1","2","3"]
max_pods        = 30
os_disk_size_gb = 30

Enviroenmnet_tag = "Dev"


# subscription_id = ""
# client_id       = ""
# client_secret   = ""
# tenant_id       = ""

subscription_id                  = "cab55b56-b5a7-4443-a247-e79699aad39a"
client_id                        = "c12a66b7-1d8b-4a40-8312-5517387372e5"
client_secret                    = "ScF8Q~Tp2EYqqVgvBvTLSL7G9k-Yw0d6sl0IRdiT"
tenant_id                        = "d043ce72-ba03-4c71-9752-8182ccd05df9"


deploy_AKS_Cluster               = true
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


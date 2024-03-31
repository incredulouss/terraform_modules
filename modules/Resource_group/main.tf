

resource "azurerm_resource_group" "example" {
  name     = "${base_name}-RG"
  location = var.location
}
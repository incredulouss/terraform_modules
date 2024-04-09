
resource "azurerm_resource_group" "example" {
  name     = "${var.RG_name}"
  location = var.location
  tags = var.resource_group_tags

    # lifecycle {
    #         prevent_destroy = true
    # }
}

# data "azurerm_resource_group" "existing_RG" {
#   name = var.RG_name
# }


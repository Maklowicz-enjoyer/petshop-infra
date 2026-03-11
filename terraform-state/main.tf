resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false

}

resource "azurerm_resource_group" "state" {
  name     = "rg-terraform-state"
  location = "westeurope"
  tags = {
    purpose    = "terraform-state"
    maanged_by = "terraform"
  }
}

resource "azurerm_storage_account" "state" {
  name                     = "stterraform${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.state.name
  location                 = azurerm_resource_group.state.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = azurerm_resource_group.state.tags
}

resource "azurerm_storage_container" "state" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.state.name
  container_access_type = "private"

}
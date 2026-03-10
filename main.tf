locals {
  resource_group_name  = "rg-${var.project_name}-${var.environment}"
  storage_account_name = "st${var.project_name}${var.environment}"
  # Storage Account: tylko male litery i cyfry, 3-24 znaki!

  default_tags = {
    environment = var.environment
    project     = var.project_name
    managed_by  = "terraform"
  }

  # merge() laczy Twoje custom tagi z domyslnymi
  all_tags = merge(local.default_tags, var.tags)

  public_ip_name = "pip-${var.project_name}-${var.environment}"
  nic-name       = "nic-${var.project_name}-${var.environment}"
  vm-name        = "vm-${var.project_name}-${var.environment}"
}

# -------------------------------------------
# Resource Group
# -------------------------------------------
resource "azurerm_resource_group" "main" {
  name     = local.resource_group_name
  location = var.location
  tags     = local.all_tags
}

# -------------------------------------------
# Storage Account
# -------------------------------------------
resource "azurerm_storage_account" "main" {
  name                     = local.storage_account_name
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = var.account_replication_type
  tags                     = local.all_tags
}
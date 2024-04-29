# Define provider and required variables
provider "azurerm" {
  features {}
}

variable "subscription_id" {
  description = "Azure Subscription ID"
}

variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "workspace_name" {
  description = "Name of the Log Analytics workspace"
}

# Create resource group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = "West US"  # Update with your desired region
}

# Create Log Analytics workspace
resource "azurerm_log_analytics_workspace" "example" {
  name                = var.workspace_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "PerGB2018"  # Update with your desired SKU

  retention_in_days = 30  # Update with your desired retention period
}

# Enable Microsoft Defender for Cloud
resource "azurerm_security_center_subscription_pricing" "example" {
  resource_group_name = azurerm_resource_group.example.name
  subscription_id     = var.subscription_id
  tier                = "Standard"  # Update with your desired tier
}

# Output the Log Analytics workspace ID
output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.example.id
}

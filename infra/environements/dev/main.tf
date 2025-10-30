provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}


module "aks_dev" {
  source              = "../../modules/aks"
  resource_group_name = "top_k8s_stage"
  location            = "francecentral"
  name                = "aks-dev"
  dns_prefix          = "aksdev"
  default_node_pool = {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }
  identity = {
    type = "SystemAssigned"
  }
  tags = {
    Environment = "Dev"
  }
}
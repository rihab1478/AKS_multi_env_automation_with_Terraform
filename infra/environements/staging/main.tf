provider "azurerm" {
  features {}
}

module "aks_stage" {
  source              = "../../modules/aks"
  resource_group_name = "top_k8s_stage"
  location            = "francecentral"
  name                = "aks-stage"
  dns_prefix          = "aksstage"
  default_node_pool = {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }
  identity = {
    type = "SystemAssigned"
  }
  tags = {
    Environment = "Staging"
  }
}
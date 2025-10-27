terraform {
  backend "azurerm" {
    resource_group_name = "top_k8s_stage"
    resource_account_name = "tfstagebackend2025rihab"
    container_name = "tfstate"
    key = "staging.terraform.tfstate"
  }
  
}

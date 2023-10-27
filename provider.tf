#############################################################################
# TERRAFORM CONFIG
#############################################################################

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.75"
    }
  }
}


#############################################################################
# PROVIDERS
#############################################################################

provider "azurerm" {
  features {}
  subscription_id = "d61367cb-9fd3-419a-81b2-4e2c4bb17332"  
}



#############################################################################
# BACKEND
#############################################################################

terraform {
  backend "azurerm" {
    storage_account_name = "sttestiacce"
    container_name       = "tfstate"
    key                  = "devtest.staticwebsite.terraform.tfstate"
    use_azuread_auth     = true
    subscription_id      = "d61367cb-9fd3-419a-81b2-4e2c4bb17332"
    tenant_id            = "d03d2f80-a15c-4376-b5c4-1a3e2c9fc1e5"
  }
}
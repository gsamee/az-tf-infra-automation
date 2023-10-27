

resource "azurerm_resource_group" "rg" {
  name     = "rg-${local.name}-${local.tier}-${local.location}"
  location = local.location
  tags     = local.common_tags
}

resource "azurerm_static_site" "static_site" {
  name                = "stapp-${local.name}-${local.tier}-${local.location}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = local.location
  tags                = local.common_tags
}



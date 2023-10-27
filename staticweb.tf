

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


resource "azurerm_public_ip" "sam_pip" {
    allocation_method       = "Static"
    ddos_protection_mode    = "VirtualNetworkInherited"
    idle_timeout_in_minutes = 4
    ip_tags                 = {}
    ip_version              = "IPv4"
    location                = "canadacentral"
    name                    = "pip-samm-test"
    resource_group_name     = "rg-samtest1-dev-centralus"
    sku                     = "Standard"
    sku_tier                = "Regional"
    tags                    = {
        "CreatedBy" = "Sameera"
    }
}
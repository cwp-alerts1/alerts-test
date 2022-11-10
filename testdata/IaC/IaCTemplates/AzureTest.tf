resource "azurerm_resource_group" "okExample" {
  name     = "okExample-resources"
  location = "West Europe"
}

resource "azurerm_sql_server" "okExample" {
  name                         = "mysqlserver"
  resource_group_name          = azurerm_resource_group.okExample.name
  location                     = azurerm_resource_group.okExample.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_storage_account" "okExample" {
  name                     = "accteststorageaccount"
  resource_group_name      = azurerm_resource_group.okExample.name
  location                 = azurerm_resource_group.okExample.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "okExample" {
  name                  = "accteststoragecontainer"
  storage_account_name  = azurerm_storage_account.okExample.name
  container_access_type = "private"
}

resource "azurerm_mssql_server_security_alert_policy" "okExample" {
  resource_group_name = azurerm_resource_group.okExample.name
  server_name         = azurerm_sql_server.okExample.name
  state               = "Enabled"
}

resource "azurerm_mssql_server_vulnerability_assessment" "okExample" {
  server_security_alert_policy_id = azurerm_mssql_server_security_alert_policy.okExample.id
  storage_account_access_key      = ""
}

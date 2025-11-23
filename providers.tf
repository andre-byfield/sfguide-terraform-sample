provider "snowflake" {
    organization_name = var.organization_name
    account_name      = var.account_name
    user              = var.user
    role              = "SYSADMIN"
    authenticator     = var.authenticator
    private_key       = file(var.private_key_path)
    private_key_passphrase  = var.private_key_passphrase
}

# New provider that will use USERADMIN to create users, roles, and grants
provider "snowflake" {
    organization_name = var.organization_name
    account_name      = var.account_name
    user              = var.user
    role              = "USERADMIN"
    alias             = "useradmin"
    authenticator     = var.authenticator
    private_key       = file(var.private_key_path)
    private_key_passphrase  = var.private_key_passphrase
}

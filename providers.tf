provider "snowflake" {
    organization_name = var.organization_name
    account_name      = var.account_name
    user              = var.user
    role              = var.role
    authenticator     = var.authenticator
    private_key       = file(var.private_key_path)
    private_key_passphrase  = var.private_key_passphrase
}
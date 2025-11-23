variable "organization_name" {
  description = "Name of the organisation, where the Snowflake account is created, used to create regionless privatelink fqdns"
  type        = string
}

variable "account_name" {
  description = "Name of the Snowflake account, used to create regionless privatelink fqdns"
  type        = string
}

variable "user" {
  description = "Name of the Snowflake user for authentication"
  type        = string
}

variable "authenticator" {
  description = "Authentication method for Snowflake"
  type        = string
}

variable "private_key_path" {
  description = "Path to the private key file used for Snowflake authentication"
  type        = string
}

variable "private_key_passphrase" {
  description = "Passphrase for the private key used for Snowflake authentication"
  type        = string
}
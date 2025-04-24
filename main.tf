terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}

provider "snowflake" {
    organization_name = "bjespqm"
    account_name      = "djb70228"
    user              = "TERRAFORM_SVC"
    role              = "SYSADMIN"
    authenticator     = "SNOWFLAKE_JWT"
    private_key       = file("C:\\Users\\AB101348\\openssl\\terraform_svc\\snowflake_tf_snow_key.p8")
}

resource "snowflake_database" "tf_db" {
  name         = "TF_DEMO_DB"
  is_transient = false
}

resource "snowflake_warehouse" "tf_warehouse" {
  name                      = "TF_DEMO_WH"
  warehouse_type            = "STANDARD"
  warehouse_size            = "XSMALL"
  max_cluster_count         = 1
  min_cluster_count         = 1
  auto_suspend              = 60
  auto_resume               = true
  enable_query_acceleration = false
  initially_suspended       = true
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.66.1"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

provider "snowflake" {
  account  = var.snowflake_account
  role     = "ACCOUNTADMIN"
  username = var.snowflake_username
  password = var.snowflake_password
}

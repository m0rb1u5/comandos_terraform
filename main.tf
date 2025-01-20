terraform {
  required_version = ">= 1.10.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "m0rb1u5terraformstate"
    container_name       = "container-envvar"
    key                  = "comandos/terraform.tfstate"
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "m0rb1u5"
      managed-by = "terraform"
    }
  }
}

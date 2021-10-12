terraform {
  required_version = ">= 1.0.8"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.80.0"
    }
  }

  backend "remote" {
    organization = "dashaun-cloud"

    workspaces {
      name = "github-actions"
    }
  }
}

terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.4.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.61.0"
    }

  }
  backend "s3" {
    bucket = "allan-barreto"
    key    = "pipeline-vm-aws-azure/terraform.tfstate"
    region = "us-east-1"

  }
}

provider "aws" {
  region = var.aws_region
}

provider "azurerm" {
  features {
  }
}



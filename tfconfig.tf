terraform {

    backend "s3" {
    bucket = "uran-temp-terraform-states"
    encrypt = true
    key    = "aws/terraform-states/terraform.tfstate"
    region = "eu-central-1"
  }

  required_version = ">= 0.14"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.6.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.0.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0.0"
    }
    template = {
      source  = "hashicorp/template"
      version = ">= 2.2.0"
    }
  }
}
provider "aws" {
  region = "eu-central-1"
}

provider "random" {}


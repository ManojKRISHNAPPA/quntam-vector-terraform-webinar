terraform {
  required_version = " ~> 1.14"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }

  }
}


provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

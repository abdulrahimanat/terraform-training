terraform {
  required_version = ">= 0.13.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.8.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}


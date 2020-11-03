terraform {
  backend "remote" {
    organization = "abdulrahimanat"

    workspaces {
      name = "terraform-training"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}

variable aws_access_key_id {}
variable aws_secret_access_key {}

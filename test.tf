resource "aws_s3_bucket" "b" {
  bucket = "my-terraform-training"
}

terraform {
  backend "remote" {
    organization = "abdulrahimanat"

    workspaces {
      name = "terraform-training"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}

variable aws_access_key_id {}
variable aws_secret_access_key {}

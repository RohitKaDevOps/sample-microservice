provider "aws" {
  region = var.aws_region
}


terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket"
    key            = "vpc/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
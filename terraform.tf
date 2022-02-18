terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "main"
    key = "terraform/webapp/terraform.tfstate"
    region = "eu-west-2"
  }
}
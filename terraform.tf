terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_s3_bucket" "main" {
  bucket = "main"
  region = "eu-west-2"
}
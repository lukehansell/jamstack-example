resource "aws_s3_bucket" "bucket" {
  bucket = "main"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.bucket.id
  acl = "private"
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = aws_s3_bucket.bucket.id
    key    = "terraform/webapp/terraform.tfstate"
    region = "us-east-1"
  }
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "YOUR-UNIQUE-BUCKET-ID"
    key    = "terraform/webapp/terraform.tfstate"
    region = "us-east-1"
  }
}
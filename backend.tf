# Backend accessible via app.terrafrom.io

terraform {
  backend "remote" {
    organization = "example-org-983800"

    workspaces {
      name = "jamstack-example"
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">= 0.13.0"
}

provider "aws" {
  region = "eu-west-1"
}

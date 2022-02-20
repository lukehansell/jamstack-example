provider "aws" {
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  region = var.aws_region
}

resource "aws_s3_bucket" "bucket" {
  bucket = "www.twowheeledadventuretours.com"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.bucket.id
  acl = "private"
}
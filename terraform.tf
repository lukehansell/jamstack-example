resource "aws_s3_bucket" "bucket" {
  bucket = "main"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.bucket.id
  acl = "private"
}
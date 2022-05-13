variable "AWS_ACCESS_KEY_ID" {
  type = string
  sensitive = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
  sensitive = true
}

variable "aws_region" {
  type = string
  default = "eu-west-2"
}

variable "domain_name" {
  type = string
  default = "www.twowheeledadventuretours.com"
}

variable "bucket_name" {
  type = string
  default = "twowheeledadventuretours.com"
}
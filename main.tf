provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "lab_bucket" {
  bucket = "lab-terraform-ci-example-${var.yourid4}"
  acl    = "private"
  lifecycle {
    prevent_destroy = false
  }
}

variable "yourid4" {
  type    = string
  default = "9711"
}
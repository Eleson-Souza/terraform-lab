terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
  }
  required_version = "<= 1.9.8"
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  tags = {
    first_name = "Eleson"
    last_name  = "Oliveira"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

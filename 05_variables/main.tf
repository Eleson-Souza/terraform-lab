terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
  }
  required_version = ">= 1.5.0, <= 1.9.8"
}

provider "aws" {
  region = local.region
}

variable "bucket_name" {
  type    = string
  default = "my_bucket_Eleson_Oliveira"

  validation {
    condition     = length(var.bucket_name) >= 3 && length(var.bucket_name) <= 63
    error_message = "The bucket_name must be between 3 and 63 characteres"
  }
}

locals {
  resource_with_prefix = lower("lar-${var.bucket_name}")
  environment          = "dev"
  region               = "us-east-1"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = local.resource_with_prefix

  tags = {
    BucketName  = var.bucket_name
    Environment = local.environment
  }
}

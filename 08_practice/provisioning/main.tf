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

# Bucket S3
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.s3_bucket_name

  tags = {
    name : var.s3_bucket_name
    environment : var.environment
  }
}

# Queue SQS
resource "aws_sqs_queue" "my_queue" {
  name                        = local.sqs_queue_name_fifo
  delay_seconds               = 90
  max_message_size            = 2048
  fifo_queue                  = true
  content_based_deduplication = true

  tags = {
    name : var.sqs_queue_name
    environment : var.environment
  }
}

# Table DynamoDB
resource "aws_dynamodb_table" "my_table" {
  name           = var.dynamo_table_name
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "id"
  range_key      = "name"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "name"
    type = "S"
  }

  tags = {
    name : var.dynamo_table_name
    environment : var.environment
  }
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}
output "queue_name" {
  value = aws_sqs_queue.my_queue.name
}
output "table_name" {
  value = aws_dynamodb_table.my_table.name
}

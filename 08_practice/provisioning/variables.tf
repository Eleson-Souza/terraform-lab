variable "s3_bucket_name" {
  description = "Nome do Bucket S3"
  type        = string
  default     = "default-bucket-name"
}

variable "sqs_queue_name" {
  description = "Nome da Fila SQS"
  type        = string
  default     = "default-queue-name"
}

locals {
  sqs_queue_name_fifo = "${var.sqs_queue_name}.fifo"
}

variable "dynamo_table_name" {
  description = "Nome da tabela do DynamoDB"
  type        = string
  default     = "default-table-name"
}

variable "region" {
  description = "Região AWS onde o bucket será criado"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Tags do recurso"
  type        = string
  default     = "dev"
}

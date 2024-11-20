variable "bucket_name" {
  description = "Nome do Bucket S3"
  type        = string
}

variable "region" {
  description = "Região AWS onde o bucket será criado"
  type        = string
  default     = "us-east-1"
}

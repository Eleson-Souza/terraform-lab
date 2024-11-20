variable "bucket_name" {
  default = "my-bucket"
  type    = string
}

output "bucket_name" {
  value       = var.bucket_name
  description = "Nome do bucket S3"
}

output "db_password" {
  value     = "my-password-12345"
  sensitive = true
}

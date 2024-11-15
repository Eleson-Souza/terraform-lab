resource "aws_s3_bucket" "bucket_s3" {
  bucket = "my-bucket-eleson-oliveira"
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.bucket_s3.arn
}

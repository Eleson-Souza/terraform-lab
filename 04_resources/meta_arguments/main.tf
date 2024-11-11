# depends_on
resource "aws_security_group" "example" {
  name        = "example-sg"
  description = "Example Security Group"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  depends_on = [
    aws_security_group.example,
  ]
}

# lifecycle
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  count = 3

  lifecycle {
    prevent_destroy = true
  }
}

# count
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  count = 3
}

# for_each
resource "aws_s3_bucket" "example" {
  for_each = toset(["bucket-1", "bucket-2", "bucket-3"])

  bucket = each.value
}

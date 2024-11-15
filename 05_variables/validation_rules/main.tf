variable "instance_type" {
  description = "Instance type for AWS EC2 instance"
  type        = string
  default     = "t2.micro"

  validation {
    condition     = contains(["t2.micro", "t2.small", "t2.medium"], var.instance_type)
    error_message = "Instance type must be one of t2.micro, t2.small, or t2.medium."
  }
}

resource "aws_instance" "instance3" {
  ami           = "ami-12345"
  instance_type = var.instance_type
}

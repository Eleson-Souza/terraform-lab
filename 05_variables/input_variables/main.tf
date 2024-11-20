# As variáveis no Terraform ajudam a parametrizar e tornar a configuração mais flexível e reutilizável.
variable "instance_type" {
  description = "Instance type for the AWS EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "availability_zones" {
  description = "List of available zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

resource "aws_instance" "instance1" {
  ami               = "ami-12345"
  instance_type     = var.instance_type
  availability_zone = element(var.availability_zones, 0)
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

# Um módulo é um conjunto de arquivos Terraform configurados para facilitar 
# a criação de recursos específicos, como VPCs, subnets, redes de segurança, e mais.
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.0.0"

  # Parâmetros específicos do módulo
  name = "my-vpc"
  cidr = "10.0.0.0/16"
  azs  = ["us-west-1a", "us-west-1b"]
}

module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.2.2"

  bucket = "my-s3-bucket"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}

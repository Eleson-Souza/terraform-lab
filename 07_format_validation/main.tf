# terraform fmt: É usado para formatar o código do Terraform conforme os padrões oficiais, garantindo uniformidade e legibilidade.
# terraform validate: Ele verifica se o código está sintaticamente correto e válido conforme as regras do Terraform.
# terraform tflint: O TFLint vai além do terraform validate, identificando erros de configuração, sugerindo boas práticas e alertando sobre configurações obsoletas.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws",
      version = "5.76.0"
    }
  }
  required_version = "<= 1.9.8"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "my-bucket-eleson-oliveira"
}

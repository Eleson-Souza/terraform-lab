# credenciais da cloud devem estar nas variáveis de ambientes ou configurado via AWS CLI 
# (AWS_DEFAULT_REGION, AWS_ACCESS_KEY_ID e AWS_SECRET_ACCESS_KEY)

resource "aws_s3_bucket" "debug" {
  bucket = "lar-bucket-eleson-terraform"

  tags = {
    "source" = "terraform"
    "env"    = "dev"
  }
}

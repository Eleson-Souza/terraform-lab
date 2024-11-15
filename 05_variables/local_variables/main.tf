/* Os Local Values ajudam a simplificar expressões e evitar redundâncias nas configurações. 
Eles permitem definir valores intermediários que podem ser usados em várias partes do código, 
tornando a configuração mais limpa e organizada. */
variable "environment" {
  type    = string
  default = "dev"
}

locals {
  instance_name = "app-${var.environment}-server"
}

resource "aws_instance" "instance2" {
  ami           = "ami-12345"
  instance_type = "t2.micro"
  tags = {
    Name = local.instance_name
  }
}

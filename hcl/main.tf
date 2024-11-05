# Define qual provedor será usado (como AWS, Azure, Google Cloud)
provider "aws" {
  region = "us-east-1"
}

# Define variável que pode ser usada no código para tornar a configuração mais flexível
variable "ami" {
  default = "ami-0c55b159cbfafe1f0"
}
variable "environment" {
  default = "dev"
}

# representa a infraestrutura específica, como uma instância de máquina virtual, banco de dados, rede, etc.
resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.environment == "prod" ? "t2.large" : "t2.micro" // condicional
}

# exibe valores após a execução do código, ajudando a verificar o resultado do provisionamento.
output "instance_ip" {
  value = aws_instance.example.public_ip
}

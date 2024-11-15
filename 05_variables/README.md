# Variables

Guia básico para configurar e usar variáveis no Terraform.

## Tipos de Variáveis

### 1. Input Variables (`variable`)

Variáveis configuráveis usadas para definir valores externos e tornar o código reutilizável.

- **Definição**:
  ```bash
  variable "environment" {
    type    = string
    default = "dev"
  }
  ```
- **Como definir valores**:
  - **Arquivo `.tfvars`**:
    ```bash
    # dev.tfvars
    environment = "prod"
    ```
    ```bash
    terraform apply -var-file="dev.tfvars"
    ```
  - **Linha de comando**:
    ```bash
    terraform apply -var="environment=prod"
    ```
  - **Variável de ambiente**:
    ```bash
    export TF_VAR_environment="prod"
    ```

### 2. Local Variables (`locals`)

Variáveis internas, usadas para simplificar cálculos ou reduzir duplicação de código.

- **Definição e uso**:

  ```bash
  locals {
    instance_name = "app-${var.environment}-server"
  }

  resource "aws_instance" "example" {
    tags = {
      Name = local.instance_name
    }
  ```

## Resumo Prático

- **Input Variables**: Configuráveis externamente; ideais para parâmetros do usuário.
- **Local Variables**: Internas ao módulo; ajudam a organizar valores fixos e cálculos.

Agora você tem um guia rápido para configurar variáveis no Terraform!

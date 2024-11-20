### **README.md**

# terraform-lab

Este repositório contém projetos e exercícios práticos de estudo em **Terraform**, uma ferramenta de **Infrastructure as Code (IaC)** que permite definir, provisionar e gerenciar infraestrutura de forma declarativa.

---

## **Objetivo**

O objetivo deste repositório é consolidar o aprendizado em Terraform através de exemplos práticos, cobrindo desde os conceitos básicos até recursos mais avançados. Cada diretório aborda um tópico específico, com arquivos `.tf` configurados para provisionar e gerenciar diferentes recursos.

---

## **Estrutura do Repositório**

A organização do repositório segue a sequência de estudos e práticas realizadas:

```plaintext
terraform-lab/
├── 01_hcl/                      # Exemplos de sintaxe HCL (Hashicorp Configuration Language)
├── 02_providers/                # Configuração e uso de provedores
├── 03_modules/                  # Definição e uso de módulos no Terraform
├── 04_resources/                # Criação e gerenciamento de recursos
│   ├── behavior/                # Comportamento dos recursos
│   ├── lifecycle/               # Ciclo de vida de recursos
│   ├── meta_arguments/          # Uso de meta-arguments como depends_on e count
├── 05_variables/                # Uso de variáveis, valores locais e validações
├── 06_outputs/                  # Configuração e práticas com outputs
├── 07_format_validation/        # Formatação e validação com terraform fmt e validate
├── 08_practice/                 # Projetos práticos integrados
```

---

## **Recursos Estudados**

- **Introdução ao Terraform**

  - Conceitos de IaC e Terraform.
  - Casos de uso e benefícios.

- **Hashicorp Configuration Language (HCL)**

  - Estrutura e sintaxe do HCL.

- **Provedores**

  - Configuração e gerenciamento com o Terraform Registry.

- **Recursos**

  - Comportamento, ciclo de vida e meta-argumentos (e.g., `count`, `for_each`).

- **Variáveis**

  - Variáveis de entrada, locais, e validações.

- **Outputs**

  - Pré-condições e valores sensíveis.

- **Format & Validate**
  - Uso de `terraform fmt`, `terraform validate` e TFLint para análise de boas práticas.

---

## **Como Usar**

1. Certifique-se de que o Terraform esteja instalado:  
   [Guia de Instalação](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).

2. Clone este repositório:

   ```bash
   git clone https://github.com/seu-usuario/terraform-lab.git
   cd terraform-lab
   ```

3. Navegue até o diretório correspondente ao tópico de interesse:

   ```bash
   cd 05_variables
   ```

4. Inicialize o Terraform no diretório:

   ```bash
   terraform init
   ```

5. Formate e validate o código

```bash
terraform fmt
terraform validate
tflint
```

6. Teste as configurações com:
   ```bash
   terraform plan
   terraform apply
   ```

---

## **Ferramentas e Extensões**

- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads)
- [VS Code Terraform Extension](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)
- [TFLint](https://github.com/terraform-linters/tflint)

---

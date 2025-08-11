# Define o provedor que vamos usar: a AWS.
provider "aws" {
  # IMPORTANTE: Garanta que esta é a mesma região da sua VPC e EC2!

  region = "us-east-1"
}
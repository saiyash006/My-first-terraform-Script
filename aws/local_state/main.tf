terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-south-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0fb67e6212e8ff822"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Demo"

  }
}


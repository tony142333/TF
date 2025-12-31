terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  required_version = ">= 1.4.0"
}

provider "aws" {
  region     = var.region
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
}

# 1. The Instance (This is where the link goes)
resource "aws_instance" "example_server" {
  ami           = var.ami
  instance_type = var.instance_type

  # --- MOVED HERE ---
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]

  tags = {
    Name = "EC2 example"
  }
}

# 2. The Security Group (Just the rules)
resource "aws_security_group" "allow_ssh_http" {
  name        = "allow_ssh_http"
  description = "Allow SSH and HTTP inbound traffic"
  vpc_id      = "vpc-0b89e3fbeb5033539"

  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}






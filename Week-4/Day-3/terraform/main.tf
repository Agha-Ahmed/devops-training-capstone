terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

# Use the default VPC (simplest for Day 3)
data "aws_vpc" "default" {
  default = true
}

# Pick a subnet from the default VPC (default VPC subnets are typically public)
data "aws_subnets" "default_vpc_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# Find a recent Amazon Linux AMI (easy + standard)
data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

# Security Group (SSH from your IP, HTTP from anywhere - training)
resource "aws_security_group" "web_sg" {
  name        = "week4-${var.env}-web-sg"
  description = "Allow SSH from my IP and HTTP from anywhere (training)"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "SSH from my public IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip_cidr]
  }

  ingress {
    description = "HTTP from anywhere (training)"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Project = "devops-training"
    Week    = "week4"
    Day     = "day5"
    Env     = var.env
  }
}

# EC2 Instance
resource "aws_instance" "web" {
  ami                    = data.aws_ami.al2023.id
  instance_type          = var.instance_type
  subnet_id              = data.aws_subnets.default_vpc_subnets.ids[0]
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  # Optional: only set if you already have a key pair in AWS
  key_name = var.key_name == "" ? null : var.key_name

  tags = {
    Name    = "week4-${var.env}-ec2"
    Project = "devops-training"
    Env     = var.env
  }
}
variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "AWS CLI profile name (SSO profile)"
  default     = "training"
}

variable "my_ip_cidr" {
  type        = string
  description = "Your public IP in CIDR format, e.g. 39.x.x.x/32"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "Optional EC2 key pair name (leave empty if not using SSH keys)"
  default     = ""
}

variable "env" {
  description = "Environment name (dev/staging/prod)"
  type        = string
  default     = "dev"
}
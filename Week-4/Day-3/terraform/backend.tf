terraform {
  backend "s3" {
    bucket  = "devops-training-terraform-state-ahmed"
    key     = "week4/day4/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
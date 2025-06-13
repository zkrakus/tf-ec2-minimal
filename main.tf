provider "aws" {
  profile = "terraform-dev"
  region = "us-east-2"
}

data "aws_caller_identity" "current" {}
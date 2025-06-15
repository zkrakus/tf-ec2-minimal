provider "aws" {
  profile = "terraform-dev"
  region  = "us-east-2"
}

data "aws_caller_identity" "current" {}

data "http" "my_ip" {
  url = "https://checkip.amazonaws.com/"
}

locals {
  my_ip = trimspace(data.http.my_ip.response_body)
}

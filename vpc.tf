resource "aws_vpc" "tf_ec2_minimal" {
  cidr_block = "10.0.0.0/24"

  tags = {
    Name    = "tf-ec2-minimal-vpc"
    Project = "tf-ec2-minimal"
    Env     = "dev"
  }
}
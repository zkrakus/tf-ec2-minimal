resource "aws_subnet" "tf_ec2_minimal_public" {
  vpc_id                  = aws_vpc.tf_ec2_minimal.id
  cidr_block              = "10.0.0.0/26"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = false

  tags = {
    Name = "tf-ec2-minimal-public-subnet"
  }
}
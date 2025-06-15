resource "aws_route_table" "tf_ec2_minimal_rt" {
  vpc_id = aws_vpc.tf_ec2_minimal.id

  tags = {
    Name    = "tf-ec2-minimal-rt"
    Project = "tf-ec2-minimal"
    Env     = "dev"
  }
}

resource "aws_route_table_association" "tf_ec2_minimal_assoc" {
  subnet_id      = aws_subnet.tf_ec2_minimal_public.id
  route_table_id = aws_route_table.tf_ec2_minimal_rt.id
}

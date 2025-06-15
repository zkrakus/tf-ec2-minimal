resource "aws_network_acl" "tf_ec2_minimal_nacl" {
  vpc_id = aws_vpc.tf_ec2_minimal.id

  tags = {
    Name    = "tf-ec2-minimal-nacl"
    Project = "tf-ec2-minimal"
    Env     = "dev"
  }
}

resource "aws_network_acl_rule" "allow_all_ingress" {
  network_acl_id = aws_network_acl.tf_ec2_minimal_nacl.id
  rule_number    = 100
  egress         = false
  protocol       = "-1"               # All protocols
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 0
  to_port        = 0
}

resource "aws_network_acl_rule" "allow_all_egress" {
  network_acl_id = aws_network_acl.tf_ec2_minimal_nacl.id
  rule_number    = 100
  egress         = true
  protocol       = "-1"
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 0
  to_port        = 0
}

resource "aws_network_acl_association" "tf_ec2_minimal_assoc" {
  subnet_id       = aws_subnet.tf_ec2_minimal_public.id
  network_acl_id  = aws_network_acl.tf_ec2_minimal_nacl.id
}
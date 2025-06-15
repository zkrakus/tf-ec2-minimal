resource "aws_security_group" "tf_ec2_minimal_sg" {
  name        = "tf-ec2-minimal-sg"
  description = "Allow SSH access"
  vpc_id      = aws_vpc.tf_ec2_minimal.id

  ingress {
    description = "SSH from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${local.my_ip}/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "tf-ec2-minimal-sg"
    Project = "tf-ec2-minimal"
    Env     = "dev"
  }
}

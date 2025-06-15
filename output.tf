# Account identity
output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

# VPC ID
output "vpc_id" {
  value = aws_vpc.tf_ec2_minimal.id
}

# Subnet ID
output "subnet_id" {
  value = aws_subnet.tf_ec2_minimal_public.id
}

# Route Table ID
output "route_table_id" {
  value = aws_route_table.tf_ec2_minimal_rt.id
}

# Network ACL ID
output "nacl_id" {
  value = aws_network_acl.tf_ec2_minimal_nacl.id
}

# Security Group ID
output "security_group_id" {
  value = aws_security_group.tf_ec2_minimal_sg.id
}

# Uncomment this once you add EC2
# output "instance_public_ip" {
#   value = aws_instance.web.public_ip
# }

# Uncomment this if you add an Internet Gateway later
# output "internet_gateway_id" {
#   value = aws_internet_gateway.tf_ec2_minimal_igw.id
# }
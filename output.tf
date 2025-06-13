output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "instance_ip" {
  value = aws_instance.web.public_ip
}
output "vpc_id" {
  value = data.aws_vpc.default.id
}

output "security_group_id" {
  value = aws_security_group.web_sg.id
}

output "instance_id" {
  value = aws_instance.web.id
}

output "instance_public_ip" {
  value = aws_instance.web.public_ip
}
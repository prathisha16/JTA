output "control_server_public_ip" {
  value = aws_instance.control_server.public_ip
}

output "control_server_instance_id" {
  value = aws_instance.control_server.id
}

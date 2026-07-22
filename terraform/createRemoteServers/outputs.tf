output "web_server1_public_ip" {
  value = aws_instance.web_server_1.public_ip
}

output "web_server2_public_ip" {
  value = aws_instance.web_server_2.public_ip
}

output "web_server1_private_ip" {
  value = aws_instance.web_server_1.private_ip
}

output "web_server2_private_ip" {
  value = aws_instance.web_server_2.private_ip
}

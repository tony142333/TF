output "public_ip" {
  value = aws_instance.example_server.public_ip
  description = "public ip"

}


output "dns" {
  value = aws_instance.example_server.private_dns
  description = "private dns"
}



output "public_ip" {
    description = "the public IP address assigned to the instance"
    value = aws_instance.name.public_ip
  
}
output "private_ip" {
    value = aws_instance.name.private_ip
    sensitive = true
  
}

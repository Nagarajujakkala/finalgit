output "public_ip" {
    sensitive = false
    value = aws_instance.name.public_ip
  
}
output "private_ip" {
    sensitive = true
    value = aws_instance.name.private_ip
  
}
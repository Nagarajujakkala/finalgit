resource "aws_instance" "name" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.sg1.id]
  associate_public_ip_address = true
  tags = {
    name = "myec2"
  }
}



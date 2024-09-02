resource "aws_instance" "name" {
  ami           = var.ami
  instance_type = var.type
  key_name      = var.key
  tags = {
    Name = "my-ec2-instance"
  }
}

data "aws_instance" "name" {
  instance_id = "i-0fb8e38d944a9e78f"

  filter {
    name   = "tag:Name"
    values = ["my-ec2-instance"]

  }
}
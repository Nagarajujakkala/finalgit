resource "aws_instance" "name" {
    ami = "ami-066784287e358dad1"
    key_name = "keypair1"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    tags = {
      Name = "my-ec2"
    }
  
}
resource "aws_instance" "ec2-instance" {
    ami = "ami-066784287e358dad1"
    key_name = "keypair1"
    instance_type = "t2.micro"
  
}
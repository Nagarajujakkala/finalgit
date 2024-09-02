provider "aws" {
    region = "us-east-1"
  


}
resource "aws_instance" "name" {
  ami           = var.ami
  instance_type = var.type
  for_each      = toset(var.mutiple-instance)
  subnet_id = var.subnet_id
 tags = {
   Name=each.key
 }
}



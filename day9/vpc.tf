resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
        name = "myvpc"
    }
  
}
resource "aws_subnet" "public1" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.1.0/26"
    availability_zone = "us-east-1a"
    tags = {
        name ="mysub"
    }  
}
resource "aws_internet_gateway" "myig" {
    vpc_id = aws_vpc.name.id
  
}
resource "aws_subnet" "public2" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.2.0/26"
    availability_zone = "us-east-1b"
}
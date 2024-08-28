resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
      name = "my-vpc"
    }
  
}
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    tags = {
      name = "public-subnet"

    }
  
}

resource "aws_internet_gateway" "myig" {
    vpc_id = aws_vpc.name.id
    tags = {
      name = "my-ig1"
    }
  
}
resource "aws_route_table" "route1" {
    vpc_id = aws_vpc.name.id
  

    route {
    gateway_id = aws_internet_gateway.myig.id
    cidr_block = "0.0.0.0/0"
    }
}


resource "aws_route_table_association" "publicrta" {
    subnet_id = aws_subnet.public.id
    route_table_id = aws_route_table.route1.id
  
}

resource "aws_eip" "eip" {
    domain = "vpc"
  
}

resource "aws_subnet" "private" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-east-1b"
    tags = {
        name = "private-subnet"
    }
  
}

resource "aws_nat_gateway" "nat" {
    subnet_id = aws_subnet.public.id
    allocation_id = aws_eip.eip.id
  tags = {
    name = "my-ng"
  }
}



resource "aws_route_table" "route2" {
    vpc_id = aws_vpc.name.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.nat.id
    }
}
resource "aws_route_table_association" "privaterta" {
    subnet_id = aws_subnet.private.id
    route_table_id = aws_route_table.route2.id
  
}








resource "aws_security_group" "sg1" {
    name = "sg1"
    vpc_id = aws_vpc.name.id
    tags = {
      name = "security"
    }
    
    ingress {
        description = "tls from vpc"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

ingress {
    description = "tls from vpc"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

egress {
    description = "outboand rule"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

    }

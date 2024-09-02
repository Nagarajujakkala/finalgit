variable "region" {
    type = string
    default = "us-east-1"
  
}
variable "ami" {
    type = string
    default = "ami-066784287e358dad1"
  
}
variable "type" {
    type = string
    default = "t2.micro"
  
}
variable "key" {
    type = string
    default = "keypair1"
  
}

variable "multiple-instance" {
    type = list(string)
  default = [ "test","dev","prod" ]
  
}

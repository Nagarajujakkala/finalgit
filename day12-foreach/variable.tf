variable "ami" {
  type    = string
  default = "ami-066784287e358dad1"

}
variable "type" {
  type    = string
  default = "t2.micro"

}
variable "mutiple-instance" {
  type    = list(string)
  default = ["test", "dev"]
  
}
variable "subnet_id" {
    type = string
default = "subnet-07f7144475341441c"
}
variable "ami" {
  type        = string
  description = "value of ami id"
  default     = "ami-066784287e358dad1"

}
variable "region" {
  type    = string
  default = "us-east-1"
}


variable "type" {
  type    = string
  default = "t2.micro"
}
variable "key" {
  type    = string
  default = "keypair1"

}
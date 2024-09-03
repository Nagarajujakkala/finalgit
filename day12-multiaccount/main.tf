provider "aws" {
    profile = "default"
    alias = "default"
}
provider "aws" {
    profile = "second-account"
    alias = "second"
}

resource "aws_s3_bucket" "name" {
    bucket = "my-nari-badavath-buckeet"
    provider = aws.second
  
}
resource "aws_s3_bucket" "test" {
    bucket = "my-nani-naresh-buckett"
  
}
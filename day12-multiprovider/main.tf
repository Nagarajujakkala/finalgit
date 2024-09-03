provider "aws" {
  region = "us-east-1"
}
provider "aws" {
  region = "us-west-2"
  alias  = "us"
}

resource "aws_s3_bucket" "east1" {
  bucket = "my-east1-uk-bucket"

}
resource "aws_s3_bucket" "west2" {
  bucket   = "my-west2-london-bucket"
  provider = aws.us #provider along with alias name
}
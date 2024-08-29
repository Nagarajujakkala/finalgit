terraform {
  backend "s3" {
    bucket = "rajubucket6789045"
    key = "naga/terraform.tfstate"
    dynamodb_table = "statefile-lock"
    region = "us-east-1"
    encrypt = true
  }
}
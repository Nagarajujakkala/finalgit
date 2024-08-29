resource "aws_s3_bucket" "raju" {
    bucket = "rajubucket6789045"
    
    }
  

resource "aws_dynamodb_table" "statefile" {
    name = "statefile-lock"
    hash_key = "LockID"
    read_capacity = 20
    write_capacity = 20

    attribute {
      name = "LockID"
      type = "S"
    }
  
}



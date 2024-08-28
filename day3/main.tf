resource "aws_s3_bucket" "name" {
    bucket = var.bucketname
  
}
resource "aws_s3_object" "file" {
    bucket = aws_s3_bucket.name.id
    key = "nag.txt"
    source = "C:/Users/ammun/FINAL CODE/nag.txt"
  
}
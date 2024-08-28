output "bucketname" {
    description = "printing the name of my bucket"
    value = aws_s3_bucket.name.bucket
  
}
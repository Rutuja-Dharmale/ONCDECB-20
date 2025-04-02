resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucketzxcvbnm"

  tags = {
    Name = "My Unique S3 Bucket"
    Environment = "dev"
   }
}
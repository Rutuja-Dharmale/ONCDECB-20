resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucketzxcvbnm"

  tags = {
    Name = "My Unique S3 Bucket"
    Environment = "dev"
   }
}


resource "aws_iam_user" "User1" {
  name = "loadbalancer"
  path = "/system/"

  tags = {
    Team = "Devops"
  }
}
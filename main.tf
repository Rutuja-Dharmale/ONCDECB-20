<<<<<<< HEAD
resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucketzxcvbnm"

  tags = {
    Name = "My Unique S3 Bucket"
    Environment = "dev"
   }
}
=======
resource "aws_instance" "example" {
  ami           = "ami-00c257e12d6828491"  # Replace with an Amazon Linux or Ubuntu AMI ID
  instance_type = "t2.micro"  # This works for general-purpose AMIs

  tags = {
    Name = "MyLinuxInstance"
  }
}
>>>>>>> 6896ac3 (commits)

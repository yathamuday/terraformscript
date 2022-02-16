resource "aws_s3_bucket" "bucklebuck" {
  bucket = "my-tf-massiveprince-bucket1111"
  acl    = "private"

  tags = {
    Name        = "ttf-bucket"
    Environment = "Dev"
  }
}

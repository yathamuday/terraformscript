resource "aws_s3_bucket" "bucklebuck" {
  bucket = "my-tf-massiveprince-bucket1111"

  tags = {
    Name        = "ttf-bucket-2022222"
    Environment = "Dev"
  }
}

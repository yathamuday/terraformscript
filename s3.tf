resource "aws_s3_bucket" "bucketbuck" {
  bucket = "my-tf-massiveprince-bucket1112"

  tags = {
    Name        = "ttf-bucket-2022222"
    Environment = "Dev"
  }
}

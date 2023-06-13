resource "random_integer" "suffix" {
  min = 1
  max = 50000
}

resource "aws_s3_bucket" "example" {
  bucket = "${var.bucket_name}-${random_integer.suffix.result}"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = var.versioning_status
  }
}

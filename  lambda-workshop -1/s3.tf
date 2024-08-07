resource "aws_s3_bucket" "external" {
  bucket = "frogtech-us-external"
  tags = {
    Environment = "Environment"
    Owner       = "Sama"
  }
}

resource "aws_s3_bucket" "internal" {
  bucket = "frogtech-us-internal"
  tags = {
    Environment = "Environment"
    Owner       = "Sama"
  }
}

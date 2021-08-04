resource "aws_s3_bucket" "financials" {
  bucket        = "fff1"
  acl           = "public-read"
  force_destroy = true
}

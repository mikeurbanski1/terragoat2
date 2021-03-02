resource "aws_s3_bucket" "financials" {
  bucket        = "fff1"
  acl           = "private"
  force_destroy = true
}

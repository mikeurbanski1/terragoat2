resource "aws_s3_bucket" "financials" {
  bucket        = "f1"
  acl           = "private"
  force_destroy = true
}
